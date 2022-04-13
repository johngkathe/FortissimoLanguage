#include "../brace/brace.h"
#include "../../Bytecode/value/value.h"
#include "../../common/common.h"
#include "compiler.h"
#include "../emit/emit.h"
#include "../error/error.h"
#include "../infix/infix.h"
#include "../../Language/object/object.h"
#include "../../Tokenization/scanner/scanner.h"
#include "../../VirtualMachine/vm/vm.h"

#ifdef DEBUG_PRINT_CODE
#include "../../Bytecode/debug/debug.h"
#endif

#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

Parser parser;

static void advance(){
    parser.previous = parser.current;

    for(;;){
        parser.current = scanToken();
        if(parser.current.type != TK_ERROR) break;
        errorAtCurrent(parser.current.start);
    }
}

static bool scout(TokenType type){
    parser.previous = parser.current;

    for(;;){
        parser.current = scanToken();
        if(parser.current.type != TK_ERROR) break;
        errorAtCurrent(parser.current.start);
    }
    return parser.current.type == type;
}

static void consume(TokenType type, const char* message){
    if(parser.current.type == type){
        advance();
        return;
    }

    errorAtCurrent(message);
}

static bool verify(TokenType type){
    return parser.current.type == type;
}

static bool verifyPrevious(TokenType type){
    return parser.previous.type == type;
}

static bool match(TokenType type){
    if(!verify(type)) return false;
    advance();
    return true;
}

static bool matchPrevious(TokenType type){
    if(!verifyPrevious(type)) return false;
    advance();
    return true;
}

static uint8_t makeConstant(Value value){ /*Must be here*/
    int constant = addConstant(currentChunk(), value);
    if(constant > UINT8_MAX){
        error("Too many constants in one chunk.");
        return 0;
    }
    return (uint8_t)constant;
}

static void initCompiler(Compiler* compiler){
    compiler->localCount = 0;
    compiler->scopeDepth = 0;
    current = compiler;
}

static void endCompiler(){
    emitReturn();
#ifdef DEBUG_PRINT_CODE
    if(!parser.hadError)
        disassembleChunk(currentChunk(), "code");
#endif
}

static Token expression();
static void statement();
static void declaration();
static ParseRule* getRule(TokenType type);
static uint8_t identifierConstant(Token* name);
static uint8_t parseVariable(const int8_t* errorMessage);
static void parsePrecedence(Precedence precedence);
static int resolveLocal(Compiler* compiler, Token* name);

static void literal(bool canAssign){
    switch (parser.previous.type){
        case TK_BANG: emitByte(OP_NOT); break;
        case TK_FALSE: emitByte(OP_FALSE); break;
        case TK_NIL: emitByte(OP_NIL); break;
        case TK_TRUE: emitByte(OP_TRUE); break;
        default: return; /*unreachable.*/
    }
}

static void grouping(bool canAssign){
    expression();
    consume(TK_RIGHT_PAREN, "Expect ')' after expression.");
}

static void number(bool canAssign){   /*Might diversify to different types of numbers*/
    double value = strtod(parser.previous.start, NULL);
    emitConstant(F64_VAL(value));
}

static void string(bool canAssign){
    emitConstant(OBJ_VAL(copyString(parser.previous.start + 1, parser.previous.length - 2)));
}

static void namedVariable(Token name, bool canAssign){
    uint8_t getOp, setOp;
    int16_t arg = resolveLocal(current, &name);
    if(arg != -1){
        setOp = OP_SET_LOCAL;
        getOp = OP_GET_LOCAL;
    } else {
        arg = identifierConstant(&name);
        setOp = OP_SET_GLOBAL;
        getOp = OP_GET_GLOBAL;
    }
    
    if(canAssign && match(TK_COLONCOLON || TK_EQ)){
        expression();
        emitBytes(setOp, (uint8_t)arg);
    } else {
        emitBytes(getOp, (uint8_t)arg);
    }
}

static void variable(bool canAssign){
    namedVariable(parser.previous, canAssign);
}

static void unary(bool canAssign){
    TokenType operatorType = parser.previous.type;

    /*Compile the operand.*/
    parsePrecedence(PREC_UNARY);

    /*Emit the operator instruction.*/
    switch(operatorType){
        case TK_BANG: emitByte(OP_NOT); break;
        case TK_MINUS: emitByte(OP_NEGATE); break;
        default: return;    /*Unreachable.*/
    }
}

static void conditional(){
    /*Compile then branch.*/
    parsePrecedence(PREC_CONDITIONAL);

    consume(TK_COLON, "Expect ':' after then branch of conditional operator.");

    /*Compile else branch.*/
    parsePrecedence(PREC_ASSIGNMENT);
}

ParseRule rules[] = {
    /*Parentheses+*/
    [TK_LEFT_PAREN]  = {grouping, NULL,  PREC_NONE},
    [TK_RIGHT_PAREN] = {NULL,    NULL,   PREC_NONE},
    [TK_LEFT_BRACE]  = {NULL,    NULL,   PREC_NONE},
    [TK_RIGHT_BRACE] = {NULL,    NULL,   PREC_NONE},
    [TK_LEFT_BRACK]  = {NULL,    NULL,   PREC_NONE},
    [TK_RIGHT_BRACK] = {NULL,    NULL,   PREC_NONE},

    /*Punctuation.*/
    [TK_BANG]        = {unary,   NULL,   PREC_NONE},
    [TK_BANGBANG]    = {NULL,    NULL,   PREC_NONE},
    [TK_QUESTION]    = {NULL,    NULL,   PREC_NONE},
    [TK_COMMA]       = {NULL,    NULL,   PREC_NONE},
    [TK_DOT]         = {NULL,    NULL,   PREC_NONE},
    [TK_DOTDOT]      = {NULL,    NULL,   PREC_NONE},
    [TK_DOTDOTDOT]   = {NULL,    NULL,   PREC_NONE},
    [TK_SEMICOLON]   = {NULL,    NULL,   PREC_NONE},
    [TK_COLON]       = {NULL,    NULL,   PREC_NONE},

    /*Comparison*/
    [TK_AMPAMP]      = {NULL,    and_,   PREC_LOGIC},
    [TK_PIPEPIPE]    = {NULL,    or_,    PREC_LOGIC},
    [TK_CARETCARET]  = {NULL,    xor_,   PREC_LOGIC},
    [TK_BANGAMP]     = {NULL,    nand_,  PREC_LOGIC},

    /*Keywords.*/
    [TK_CASE]        = {NULL,    NULL,   PREC_NONE},
    [TK_CLASS]       = {NULL,    NULL,   PREC_NONE},
    [TK_DEF]         = {NULL,    NULL,   PREC_NONE},
    [TK_ELSE]        = {NULL,    NULL,   PREC_NONE},
    [TK_ELSIF]       = {NULL,    NULL,   PREC_NONE},
    [TK_FALSE]       = {literal, NULL,   PREC_NONE},
    [TK_FOR]         = {NULL,    NULL,   PREC_NONE},
    [TK_IF]          = {NULL,    NULL,   PREC_NONE},
    [TK_IN]          = {NULL,    NULL,   PREC_NONE},
    [TK_LET]         = {NULL,    NULL,   PREC_NONE},
    [TK_NIL]         = {literal, NULL,   PREC_NONE},
    [TK_PUTS]        = {NULL,    NULL,   PREC_NONE},
    [TK_RETURN]      = {NULL,    NULL,   PREC_NONE},
    [TK_THIS]        = {NULL,    NULL,   PREC_NONE},
    [TK_TRUE]        = {literal, NULL,   PREC_NONE},
    [TK_WHEN]        = {NULL,    NULL,   PREC_NONE},
    [TK_WHILE]       = {NULL,    NULL,   PREC_NONE},

    /*Inheritance.*/
    [TK_LTTILDE]     = {NULL,    NULL,   PREC_NONE},
    [TK_TILDEGT]     = {NULL,    NULL,   PREC_NONE},

    /*Literals.*/
    [TK_FIELD]       = {NULL,    NULL,   PREC_NONE},
    [TK_NAME]        = {NULL,    NULL,   PREC_NONE},
    [TK_NUMBER]      = {number,  NULL,   PREC_NONE},
    [TK_IDENTIFIER]  = {variable, NULL,  PREC_NONE},
    [TK_INTERPOLATION] = {NULL,  NULL,   PREC_NONE},
    [TK_LINE]        = {NULL,    NULL,   PREC_NONE},
    [TK_STATIC_FIELD] = {NULL,   NULL,   PREC_NONE},
    [TK_STRING]      = {string,  NULL,   PREC_NONE},

    /*Others.*/
    [TK_ERROR]       = {NULL,    NULL,   PREC_NONE},
    [TK_EOF]         = {NULL,    NULL,   PREC_NONE},

    /*Variable declaration.*/

    /*Assignment.*/

    [TK_EQ]          = {NULL,    NULL,   PREC_ASSIGNMENT},
    [TK_COLONCOLON]  = {NULL,    NULL,   PREC_ASSIGNMENT},

    /*Checking equality.*/
    [TK_EQEQ]        = {NULL,    binary, PREC_EQUALITY},
    [TK_BANGEQ]      = {NULL,    binary, PREC_EQUALITY},
    [TK_LT]          = {NULL,    binary, PREC_COMPARISON},
    [TK_GT]          = {NULL,    binary, PREC_COMPARISON},
    [TK_LTEQ]        = {NULL,    binary, PREC_COMPARISON},
    [TK_GTEQ]        = {NULL,    binary, PREC_COMPARISON}, 

    /*Math.*/
    [TK_MINUS]       = {unary,   binary, PREC_TERM},
    [TK_PLUS]        = {NULL,    binary, PREC_TERM},
    [TK_STAR]        = {NULL,    binary, PREC_FACTOR},
    [TK_SLASH]       = {NULL,    binary, PREC_FACTOR},
    [TK_MOD]         = {NULL,    binary, PREC_FACTOR},
    [TK_STARSTAR]    = {NULL,    binary, PREC_EXPONENT},
};

static void parsePrecedence(Precedence precedence){
    advance();
    ParseFn prefixRule = getRule(parser.previous.type)->prefix;
    if(prefixRule == NULL){
        error("Expect expression.");
        return;
    }

    bool canAssign = precedence <= PREC_ASSIGNMENT;
    prefixRule(canAssign);

    while(precedence <= getRule(parser.current.type)->precedence){
        advance();
        ParseFn infixRule = getRule(parser.previous.type)->infix;
        infixRule(canAssign);
    }

    if(canAssign && match(TK_COLONCOLON)){
        error("Invalid assignment target.");
    }
}

static void endExpression(){
    if(parser.current.type == TK_ENDEXPRESSION){
        advance();
        return;
    }
}

static uint8_t identifierConstant(Token* name){
    Value index;
    ObjString* identifier = copyString(name->start, name->length);
    if(tableGet(&vm.globalNames, identifier, &index)){
        return (uint8_t)AS_F64(index);
    }

    uint8_t newIndex = (uint8_t)vm.globalValues.count;
    writeValueArray(&vm.globalValues, UNDEFINED_VAL);

    tableSet(&vm.globalNames, identifier, F64_VAL((double)newIndex));
    return newIndex;
}

static bool identifiersEqual(Token* a, Token* b){
    if(a->length != b->length) return false;
    return memcmp(a->start, b->start, a->length) == 0;
}

static int resolveLocal(Compiler* compiler, Token* name){
    ptrdiff_t i;
    for(i = compiler->localCount - 1; i >= 0; i--){
        Local* local = &compiler->locals[i];
        if(identifiersEqual(name, &local->name)){
            /* if(local->depth == -1){ /*Might remove.
            /*     error("Cannot read local variable in its own initializer.");
            /* }*/   
            return i;
        }
    }
    return -1;
}

static void addLocal(Token name){
    if(current->localCount == UINT8_COUNT){
        error("Too many local variables in function.");
        return;
    }

    Local* local = &current->locals[current->localCount++];
    local->name = name;
    /*local->depth = current->scopeDepth;*/
    local->depth = -1;
}

static int16_t discardLocals(int16_t depth){
    assert(current->scopeDepth > -1);

    int16_t local = current->localCount -1;
    while(local >= 0 && current->locals[local].depth >= depth){
        if(current->locals[local].isUpvalue)
            emitByte(OP_CLOSE_UPVALUE);
        else emitByte(OP_POP);
        local--; 
    }
    return current->localCount - local - 1;
}

static void declareVariable(){
    if(current->scopeDepth == 0) return;

    Token* name = &parser.previous;
    /*Will likely remove the below for loop*/
    ptrdiff_t i;
    for(i = current->localCount - 1; i >= 0; i--){
        Local* local = &current->locals[i];
        if(local->depth != -1 && local->depth < current->scopeDepth){
            break;
        }
        if(identifiersEqual(name, &local->name)){
            error("Already a variable with this name in this scope.");
        }
    }
    addLocal(*name);
}

static uint8_t parseVariable(const int8_t* errorMessage){
    consume(TK_IDENTIFIER, errorMessage);

    declareVariable();
    if(current->scopeDepth > 0) return 0;

    return identifierConstant(&parser.previous);
}

static void markInitialized(){
    current->locals[current->localCount - 1].depth = current->scopeDepth;
}

static void defineVariable(uint8_t global){
    if(current->scopeDepth > 0){
        markInitialized();
        return;
    }

    emitBytes(OP_DEFINE_GLOBAL, global);
}

static ParseRule* getRule(TokenType type){
    return &rules[type];
}

static Token expression(){
    parsePrecedence(PREC_ASSIGNMENT);
    return makeToken(TK_ENDEXPRESSION);
}

static void noTokenExpression(){
    parsePrecedence(PREC_ASSIGNMENT);
}

static void varDeclaration(){
    uint8_t var =  parseVariable("Expected variable name.");

    if(match(TK_COLONCOLON)){
        expression();
        
        consume(TK_NEWLINE, "Expected a newline after variable declaration.");
        defineVariable(var);
    } else if(match(TK_EQ)) {
        variable(true);
        consume(TK_NEWLINE, "Expected a newline after value.");
        emitByte(OP_POP);
    }
}

static void expressionStatement(){
    expression();
    emitByte(OP_POP);
}

static void ifStatement(){
    noTokenExpression();
    consume(TK_TILDEGT, "Expected '~>' after condition.");

    int16_t thenJump = emitJump(OP_JUMP_IF_FALSE);

    emitByte(OP_POP);
    statement();

    int16_t elseJump = emitJump(OP_JUMP);

    patchJump(thenJump);
    emitByte(OP_POP);
    
    if(match(TK_ELSIF)) ifStatement();
    else if(match(TK_ELSE)) statement();
    
    patchJump(elseJump);
}

static void putsStatement(){
    expression();
    emitByte(OP_PUTS);
    endExpression();
}

static int8_t whileStatement(){
    int8_t gotoElse = 0;    /*if gotoElse exits at a value of 1, goes to 'else'*/
    gotoElse++;

    int16_t loopStart = currentChunk()->count;
    noTokenExpression();
    consume(TK_TILDEGT, "Expected '~>' after condition.");

    int16_t exitJump = emitJump(OP_JUMP_IF_FALSE);
    emitByte(OP_POP);

    statement();
    emitLoop(loopStart);

    patchJump(exitJump);
    emitByte(OP_POP);
}

static void doStatement(){  /*equivalent to for(;;) or while(true)*/
    int16_t loopStart = currentChunk()->count;

    int16_t exitJump = emitJump(OP_JUMP_IF_FALSE);
    emitByte(OP_POP);
    statement();
    emitLoop(loopStart);
    
    patchJump(exitJump);
    emitByte(OP_POP);
}

static void synchronize(){
    parser.panicMode = false;

    while(parser.current.type != TK_EOF){
        if(parser.previous.type == TK_NEWLINE) return; /*Consider changing to TK_NEWLINE*/
        switch(parser.current.type){
            case TK_CLASS:
            case TK_DEF:
            case TK_LET:
            case TK_FOR:
            case TK_IF:
            case TK_WHILE:
            case TK_PUTS:
            case TK_RETURN:
                return;
            default:
                ;   /*Do nothing.*/
        }
        advance();
    }
}

static void declaration(){
    uint8_t var;
    /*if(scout(TK_COLONCOLON)) /*Figure this out tomorrow*/
        var =  parseVariable("Expected variable name.");

    if(match(TK_COLONCOLON)){
        /*if(match(TK_LEFT_BRACE)) function();*/
        if(match(TK_SEMICOLON)){
            emitByte(OP_NIL);
            defineVariable(var);
            return;
        }
        expression();
        defineVariable(var);
        /*match(TK_ENDEXPRESSION);*/
        endExpression();
    } else if(match(TK_EQ)){
        expressionStatement();
        /*match(TK_ENDEXPRESSION);*/
        endExpression();
    }
    if(parser.panicMode) synchronize();
}

static void statement(){
    if(parser.panicMode) synchronize();
    switch(parser.current.type){
        case TK_BREAK:{
            if(current->scopeDepth == 0){
                error("Cannot use 'break' outside of a loop.");
                return;
            } else {
                int16_t breakJump = emitJump(OP_JUMP);
                advance();
                discardLocals(current->scopeDepth + 1);
                patchJump(breakJump);
            }
        }
        case TK_ELSE:{
            error("Cannot use else without preceding if statement.");
            break;
        }
        case TK_PUTS:{
            advance();
            putsStatement();
            break;
        }  
        case TK_IF:{
            advance();
            ifStatement();
            break;
        }  
        case TK_WHILE:{
            advance();
            whileStatement();
            break;
        }
        case TK_DO:{
            advance();
            doStatement();
            break;
        }
        case TK_LEFT_BRACE:{
            advance();
            beginScope();
            block();
            endScope();
            break;
        }
        case TK_EOF: break;

        default:{
            declaration();
            break;
        } 
    }
}

bool compile(const int8_t* source, Chunk* chunk){
    initScanner(source);
    Compiler compiler;
    initCompiler(&compiler);
    compilingChunk = chunk;

    parser.hadError = false;
    parser.panicMode = false;

    advance();
    
    while(!match(TK_EOF)){
        statement();
    }

    endCompiler();
    return !parser.hadError;
}