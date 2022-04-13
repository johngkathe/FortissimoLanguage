#ifndef compiler_h
#define compiler_h

#include "../../Language/object/object.h"
#include "../../Tokenization/scanner/scanner.h"
#include "../../VirtualMachine/vm/vm.h"

#include <stdint.h>

typedef enum {
    PREC_NONE,
    PREC_ASSIGNMENT,    /* ::, :=, =, etc. */
    PREC_CONDITIONAL,   /* ? : */
    PREC_LOGIC,         /* &&, ||, ^^, !& */
    PREC_EQUALITY,      /* ==, != */
    PREC_COMPARISON,    /* <, >, <=, >= */
    PREC_TERM,          /* +, -*/
    PREC_FACTOR,        /* *, /, % */
    PREC_EXPONENT,      /* ** */
    PREC_UNARY,         /* !, - */
    PREC_CALL,          /* ., () */
    PREC_PRIMARY
} Precedence;

typedef void (*ParseFn)(bool canAssign);
typedef struct {
    ParseFn prefix;
    ParseFn infix;
    Precedence precedence;
} ParseRule;

typedef struct {
    Token current;
    Token previous;
    bool hadError;
    bool panicMode;
} Parser;
typedef struct {
    Token name;
    int16_t depth;
    bool isUpvalue;
} Local;
typedef struct {
    Local locals[UINT8_COUNT];
    int16_t localCount;
    int16_t scopeDepth;
} Compiler;

Chunk* compilingChunk;

static Chunk* currentChunk(){
    return compilingChunk;
}

/*might make 'parser.h' and move these three */
static void consume(TokenType type, const char* message);
static bool verify(TokenType type);
static ParseRule* getRule(TokenType type);
static void parsePrecedence(Precedence precedence);

static uint8_t makeConstant(Value value);

static void statement();

bool compile(const int8_t* source, Chunk* chunk);
Token scanToken();

#endif