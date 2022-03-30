#include "../../Bytecode/value/value.h"
#include "../../common/common.h"
#include "compiler.h"
#include "../../Language/object/object.h"
#include "../../Tokenization/scanner/scanner.h"
#include "../../VirtualMachine/vm/vm.h"

#ifdef DEBUG_PRINT_CODE
#include "../../Bytecode/debug/debug.h"
#endif

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct {
    Token current;
    Token previous;
    bool hadError;
    bool panicMode;
} Parser;

typedef enum {
    PREC_NONE,
    PREC_ASSIGNMENT,    // :=, =, etc.
    PREC_CONDITIONAL,   // ?:
    PREC_LOGIC,         // &&, ||, ^^
    PREC_EQUALITY,      // ==, !=
    PREC_COMPARISON,    // <, >, <=, >=
    PREC_TERM,          // +, -
    PREC_FACTOR,        // *, /, %
    PREC_EXPONENT,      // **
    PREC_UNARY,         // !, -
    PREC_CALL,          // ., ()
    PREC_PRIMARY
} Precedence;

typedef void (*ParseFn)(bool canAssign);

typedef struct {
    ParseFn prefix;
    ParseFn infix;
    Precedence precedence;
} ParseRule;

Parser parser;
Chunk* compilingChunk;

static Chunk* currentChunk(){
    return compilingChunk;
}

static void errorAt(Token* token, const char* message){
    if(parser.panicMode) return;
    parser.panicMode = true;
    fprintf(stderr, "[Line %d] Error", token->line);

    if(token->type == TOKEN_EOF){
        fprintf(stderr, " at end.");
    } else if (token->type == TOKEN_ERROR){//nothing
    } else {
        fprintf(stderr, " at '%.*s'", token->length, token->start);
    }

    fprintf(stderr, ": %s\n", message);
    parser.hadError = true;
}

static void error(const char* message){
    errorAt(&parser.previous, message);
}

static void errorAtCurrent(const char* message){
    errorAt(&parser.current, message);
}

static void advance(){
    parser.previous = parser.current;

    for(;;){
        parser.current = scanToken();
        if(parser.current.type != TOKEN_ERROR) break;
        errorAtCurrent(parser.current.start);
    }
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

static bool match(TokenType type){
    if(!verify(type)) return false;
    advance();
    return true;
}

static void emitByte(uint8_t byte){
    writeChunk(currentChunk(), byte, parser.previous.line);
}

static void emitBytes(uint8_t byte1, uint8_t byte2){
    emitByte(byte1);
    emitByte(byte2);
}

static void emitReturn(){
    emitByte(OP_RETURN);
}

static uint8_t makeConstant(Value value){
    int constant = addConstant(currentChunk(), value);
    if(constant > UINT8_MAX){
        error("Too many constants in one chunk.");
        return 0;
    }
    return (uint8_t)constant;
}

static void emitConstant(Value value){
    emitBytes(OP_CONSTANT, makeConstant(value));
}

static void endCompiler(){
    emitReturn();
#ifdef DEBUG_PRINT_CODE
    if(!parser.hadError)
        disassembleChunk(currentChunk(), "code");
#endif
}

static void expression();
static void statement();
static void declaration();
static ParseRule* getRule(TokenType type);
static uint8_t identifierConstant(Token* name);
static uint8_t parseVariable(const int8_t* errorMessage);
static void parsePrecedence(Precedence precedence);

static void binary(bool canAssign){
    TokenType operatorType = parser.previous.type;
    ParseRule* rule = getRule(operatorType);
    parsePrecedence((Precedence)(rule->precedence + 1));

    switch (operatorType){
        case TOKEN_EQEQ: emitByte(OP_EQUAL); break;
        case TOKEN_BANGEQ: emitBytes(OP_EQUAL, OP_NOT); break;
        case TOKEN_LT: emitByte(OP_LESS); break;
        case TOKEN_GT: emitByte(OP_GREATER); break;
        case TOKEN_LTEQ: emitBytes(OP_GREATER, OP_NOT); break;
        case TOKEN_GTEQ: emitBytes(OP_LESS, OP_NOT); break;
        case TOKEN_PLUS: emitByte(OP_ADD); break;
        case TOKEN_MINUS: emitByte(OP_SUBTRACT); break;
        case TOKEN_STAR: emitByte(OP_MULTIPLY); break;
        case TOKEN_SLASH: emitByte(OP_DIVIDE); break;
        case TOKEN_MOD: emitByte(OP_MODULATE); break;
        case TOKEN_STARSTAR: emitByte(OP_EXPONENTIATE); break;
        default: break; //unreachable.
    }
}

static void literal(bool canAssign){
    switch (parser.previous.type){
        case TOKEN_BANG: emitByte(OP_NOT); break;
        case TOKEN_FALSE: emitByte(OP_FALSE); break;
        case TOKEN_NIL: emitByte(OP_NIL); break;
        case TOKEN_TRUE: emitByte(OP_TRUE); break;
        default: return; //unreachable.
    }
}

static void grouping(bool canAssign){
    expression();
    consume(TOKEN_RIGHT_PAREN, "Expect ')' after expression.");
}

static void number(bool canAssign){   //Might diversify to different types of numbers
    double value = strtod(parser.previous.start, NULL);
    emitConstant(DOUBLE_VAL(value));
}

static void string(bool canAssign){
    emitConstant(OBJ_VAL(copyString(parser.previous.start + 1, parser.previous.length - 2)));
}

static void namedVariable(Token name, bool canAssign){
    uint8_t arg = identifierConstant(&name);
    
    if(canAssign && match(TOKEN_EQ)){
        expression();
        emitBytes(OP_SET_GLOBAL, arg);
    } else {
        emitBytes(OP_GET_GLOBAL, arg);
    }
}

static void variable(bool canAssign){
    namedVariable(parser.previous, canAssign);
}

static void unary(bool canAssign){
    TokenType operatorType = parser.previous.type;

    //Compile the operand.
    parsePrecedence(PREC_UNARY);

    //Emit the operator instruction.
    switch(operatorType){
        case TOKEN_BANG: emitByte(OP_NOT); break;
        case TOKEN_MINUS: emitByte(OP_NEGATE); break;
        default: return;    //Unreachable.
    }
}

static void conditional(){
    //Compile then branch.
    parsePrecedence(PREC_CONDITIONAL);

    consume(TOKEN_COLON, "Expect ':' after then branch of conditional operator.");

    //Compile else branch.
    parsePrecedence(PREC_ASSIGNMENT);
}

ParseRule rules[] = {
    //Parentheses+
    [TOKEN_LEFT_PAREN]  = {grouping, NULL,  PREC_NONE},
    [TOKEN_RIGHT_PAREN] = {NULL,    NULL,   PREC_NONE},
    [TOKEN_LEFT_BRACE]  = {NULL,    NULL,   PREC_NONE},
    [TOKEN_RIGHT_BRACE] = {NULL,    NULL,   PREC_NONE},
    [TOKEN_LEFT_BRACK]  = {NULL,    NULL,   PREC_NONE},
    [TOKEN_RIGHT_BRACK] = {NULL,    NULL,   PREC_NONE},

    //Punctuation.
    [TOKEN_BANG]        = {unary,   NULL,   PREC_NONE},
    [TOKEN_BANGBANG]    = {NULL,    NULL,   PREC_NONE},
    [TOKEN_QUESTION]    = {NULL,    NULL,   PREC_NONE},
    [TOKEN_COMMA]       = {NULL,    NULL,   PREC_NONE},
    [TOKEN_DOT]         = {NULL,    NULL,   PREC_NONE},
    [TOKEN_DOTDOT]      = {NULL,    NULL,   PREC_NONE},
    [TOKEN_DOTDOTDOT]   = {NULL,    NULL,   PREC_NONE},
    [TOKEN_SEMICOLON]   = {NULL,    NULL,   PREC_NONE},
    [TOKEN_COLON]       = {NULL,    NULL,   PREC_NONE},

    //Keywords.
    [TOKEN_CASE]        = {NULL,    NULL,   PREC_NONE},
    [TOKEN_CLASS]       = {NULL,    NULL,   PREC_NONE},
    [TOKEN_DEF]         = {NULL,    NULL,   PREC_NONE},
    [TOKEN_ELSE]        = {NULL,    NULL,   PREC_NONE},
    [TOKEN_ELSIF]       = {NULL,    NULL,   PREC_NONE},
    [TOKEN_FALSE]       = {literal, NULL,   PREC_NONE},
    [TOKEN_FOR]         = {NULL,    NULL,   PREC_NONE},
    [TOKEN_IF]          = {NULL,    NULL,   PREC_NONE},
    [TOKEN_IN]          = {NULL,    NULL,   PREC_NONE},
    [TOKEN_LET]         = {NULL,    NULL,   PREC_NONE},
    [TOKEN_NIL]         = {literal, NULL,   PREC_NONE},
    [TOKEN_PUTS]        = {NULL,    NULL,   PREC_NONE},
    [TOKEN_RETURN]      = {NULL,    NULL,   PREC_NONE},
    [TOKEN_THIS]        = {NULL,    NULL,   PREC_NONE},
    [TOKEN_TRUE]        = {literal, NULL,   PREC_NONE},
    [TOKEN_WHEN]        = {NULL,    NULL,   PREC_NONE},
    [TOKEN_WHILE]       = {NULL,    NULL,   PREC_NONE},

    //Inheritance.
    [TOKEN_LTTILDE]     = {NULL,    NULL,   PREC_NONE},
    [TOKEN_TILDEGT]     = {NULL,    NULL,   PREC_NONE},

    //Literals.
    [TOKEN_FIELD]       = {NULL,    NULL,   PREC_NONE},
    [TOKEN_NAME]        = {NULL,    NULL,   PREC_NONE},
    [TOKEN_NUMBER]      = {number,  NULL,   PREC_NONE},
    [TOKEN_IDENTIFIER]  = {variable, NULL,  PREC_NONE},
    [TOKEN_INTERPOLATION] = {NULL,  NULL,   PREC_NONE},
    [TOKEN_LINE]        = {NULL,    NULL,   PREC_NONE},
    [TOKEN_STATIC_FIELD] = {NULL,   NULL,   PREC_NONE},
    [TOKEN_STRING]      = {string,  NULL,   PREC_NONE},

    //Others.
    [TOKEN_ERROR]       = {NULL,    NULL,   PREC_NONE},
    [TOKEN_EOF]         = {NULL,    NULL,   PREC_NONE},

    //Variable declaration.

    //Assignment.

    [TOKEN_EQ]          = {NULL,    NULL,   PREC_ASSIGNMENT},
    [TOKEN_COLONCOLON]  = {NULL,    NULL,   PREC_ASSIGNMENT},

    //Checking equality.
    [TOKEN_EQEQ]        = {NULL,    binary, PREC_EQUALITY},
    [TOKEN_BANGEQ]      = {NULL,    binary, PREC_EQUALITY},
    [TOKEN_LT]          = {NULL,    binary, PREC_COMPARISON},
    [TOKEN_GT]          = {NULL,    binary, PREC_COMPARISON},
    [TOKEN_LTEQ]        = {NULL,    binary, PREC_COMPARISON},
    [TOKEN_GTEQ]        = {NULL,    binary, PREC_COMPARISON}, 

    //Math.
    [TOKEN_MINUS]       = {unary,   binary, PREC_TERM},
    [TOKEN_PLUS]        = {NULL,    binary, PREC_TERM},
    [TOKEN_STAR]        = {NULL,    binary, PREC_FACTOR},
    [TOKEN_SLASH]       = {NULL,    binary, PREC_FACTOR},
    [TOKEN_MOD]         = {NULL,    binary, PREC_FACTOR},
    [TOKEN_STARSTAR]    = {NULL,    binary, PREC_EXPONENT},
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

    if(canAssign && match(TOKEN_EQ)){
        error("Invalid assignment target.");
    }
}

static void endExpression(){
    if(parser.current.type == TOKEN_SEMICOLON){
        advance();
        return;
    }
    
}

static uint8_t identifierConstant(Token* name){
    Value index;
    ObjString* identifier = copyString(name->start, name->length);
    if(tableGet(&vm.globalNames, identifier, &index)){
        return (uint8_t)AS_DOUBLE(index);
    }

    uint8_t newIndex = (uint8_t)vm.globalValues.count;
    writeValueArray(&vm.globalValues, UNDEFINED_VAL);

    tableSet(&vm.globalNames, identifier, DOUBLE_VAL((double)newIndex));
    return newIndex;
}

static uint8_t parseVariable(const int8_t* errorMessage){
    consume(TOKEN_IDENTIFIER, errorMessage);
    return identifierConstant(&parser.previous);
}

static void defineVariable(uint8_t global){
    emitBytes(OP_DEFINE_GLOBAL, global);
}

static ParseRule* getRule(TokenType type){
    return &rules[type];
}

static void expression(){
    parsePrecedence(PREC_ASSIGNMENT);
}

static void letDeclaration(){
    uint8_t global =  parseVariable("Expect variable name.");

    if(match(TOKEN_COLONCOLON)){
        expression();
    } else {
        emitByte(OP_NIL);
    }
    consume(TOKEN_SEMICOLON, "Expect ';' after variable declaration."); //work on adding expression orientation

    defineVariable(global);
}

static void expressionStatement(){
    expression();
    consume(TOKEN_NEWLINE, "Expect a newline after value.");
    emitByte(OP_POP);
}

static void putsStatement(){
    expression();
    consume(TOKEN_NEWLINE, "Expect a newline after value.");
    emitByte(OP_PUTS);
}

static void synchronize(){
    parser.panicMode = false;

    while(parser.current.type != TOKEN_EOF){
        if(parser.previous.type == TOKEN_SEMICOLON) return; //Consider changing to TOKEN_NEWLINE
        switch(parser.current.type){
            case TOKEN_CLASS:
            case TOKEN_DEF:
            case TOKEN_LET:
            case TOKEN_FOR:
            case TOKEN_IF:
            case TOKEN_WHILE:
            case TOKEN_PUTS:
            case TOKEN_RETURN:
                return;
            default:
                ;   //Do nothing.
        }
        advance();
    }
}

static void declaration(){
    uint8_t global =  parseVariable("Expect variable name.");

    if(match(TOKEN_COLONCOLON)){
        expression();
        consume(TOKEN_NEWLINE, "Expect a newline after variable declaration.");
        defineVariable(global);
    } else {
        variable(true);
        consume(TOKEN_NEWLINE, "Expect a newline after value.");
        emitByte(OP_POP);
    }
}

static void statement(){
    if(match(TOKEN_PUTS)){
        putsStatement();
    } else {
        declaration();
    }
    if(parser.panicMode) synchronize();
}

//CLox Implementation below

// static void declaration(){
//     if(match(TOKEN_LET)){
//         letDeclaration();
//     } else {
//         statement();
//     }

//     if(parser.panicMode) synchronize();
// }

// static void statement(){
//     if(match(TOKEN_PUTS)){
//         putsStatement();
//     } else {
//         expressionStatement();
//     }
// }

bool compile(const int8_t* source, Chunk* chunk){
    initScanner(source);
    compilingChunk = chunk;

    parser.hadError = false;
    parser.panicMode = false;

    advance();
    
    while(!match(TOKEN_EOF)){
        //declaration();
        statement();
    }

    endCompiler();
    return !parser.hadError;
}