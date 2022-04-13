#ifndef chunk_h
#define chunk_h

#include "../../common/common.h"
#include "../value/value.h"

#include <stdint.h>

typedef enum {
    OP_CONSTANT,
    /*Might need a better solution than its own opcode*/
    OP_CONSTANT_LONG,
    OP_NIL,
    OP_TRUE,
    OP_FALSE,
    OP_POP,
    OP_CLOSE_UPVALUE,
    OP_DEFINE_GLOBAL,
    OP_SET_GLOBAL,
    OP_GET_GLOBAL,
    OP_SET_LOCAL,
    OP_GET_LOCAL,
    OP_EQUAL,
    OP_GREATER,
    OP_LESS,
    OP_ADD,
    OP_SUBTRACT,
    OP_MULTIPLY,
    OP_DIVIDE,
    OP_MODULATE,
    OP_EXPONENTIATE,
    OP_NOT,
    OP_NEGATE,
    OP_PUTS,
    OP_JUMP,
    OP_JUMP_IF_FALSE,
    OP_JUMP_IF_TRUE,
    OP_LOOP,
    OP_RETURN,
} OpCode;
;
typedef struct {
    int16_t offset;
    uint16_t line;
} LineStart;

typedef struct {
    int16_t count;
    int16_t capacity;
    uint8_t* code;
    ValueArray constants;
    int16_t lineCount;
    int16_t lineCapacity;
    LineStart* lines;
} Chunk;

int16_t addConstant(Chunk* chunk, Value value);
void initChunk(Chunk* chunk);
void freeChunk(Chunk* chunk);
int16_t getLine(Chunk* chunk, int16_t instruction);
void writeConstant(Chunk* chunk, Value value, int16_t line);
void writeChunk(Chunk* chunk, uint8_t byte, int16_t line);


#endif