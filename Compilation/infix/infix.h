#ifndef infix_h
#define infix_h

#include "../compiler/compiler.h"
#include "../emit/emit.h"

/*Order based on precedence, then alphabet*/

/*PREC_LOGIC*/
static void and_(bool canAssign){
    int32_t elseJump = emitJump(OP_JUMP_IF_TRUE);
    int32_t endJump = emitJump(OP_JUMP);

    patchJump(elseJump);
    emitByte(OP_POP);

    parsePrecedence(PREC_LOGIC);
    patchJump(endJump);
}

static void nand_(bool canAssign){
    int32_t endJump = emitJump(OP_JUMP_IF_TRUE);

    emitByte(OP_POP);
    parsePrecedence(PREC_LOGIC);    /*Check !&.*/

    patchJump(endJump);
}

static void or_(bool canAssign){
    int32_t elseJump = emitJump(OP_JUMP_IF_FALSE);
    int32_t endJump = emitJump(OP_JUMP);

    patchJump(elseJump);
    emitByte(OP_POP);

    parsePrecedence(PREC_LOGIC);
    patchJump(endJump);
}

static void xor_(bool canAssign){
    int32_t elseJump = emitJump(OP_JUMP_IF_FALSE);
    int32_t endJump = emitJump(OP_JUMP);

    printf("%u\t%u\n", elseJump, endJump);

    patchJump(elseJump);
    emitByte(OP_POP);

    parsePrecedence(PREC_LOGIC);
    patchJump(endJump);
}

/*Checking equality/Math*/
static void binary(bool canAssign){
    TokenType operatorType = parser.previous.type;
    ParseRule* rule = getRule(operatorType);
    parsePrecedence((Precedence)(rule->precedence + 1));

    switch (operatorType){
        case TK_EQEQ: emitByte(OP_EQUAL); break;
        case TK_BANGEQ: emitBytes(OP_EQUAL, OP_NOT); break;
        case TK_LT: emitByte(OP_LESS); break;
        case TK_GT: emitByte(OP_GREATER); break;
        case TK_LTEQ: emitBytes(OP_GREATER, OP_NOT); break;
        case TK_GTEQ: emitBytes(OP_LESS, OP_NOT); break;
        case TK_PLUS: emitByte(OP_ADD); break;
        case TK_MINUS: emitByte(OP_SUBTRACT); break;
        case TK_STAR: emitByte(OP_MULTIPLY); break;
        case TK_SLASH: emitByte(OP_DIVIDE); break;
        case TK_MOD: emitByte(OP_MODULATE); break;
        case TK_STARSTAR: emitByte(OP_EXPONENTIATE); break;
        default: break; /*unreachable.*/
    }
}

#endif