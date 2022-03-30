#ifndef vm_h
#define vm_h

#include "../../Bytecode/chunk/chunk.h"
#include "../../Bytecode/value/value.h"
#include "../../Language/table/table.h"

#include <stdint.h>

#define STACK_MAX 256

typedef struct {
    Chunk* chunk;
    uint8_t* ip;    //instruction pointer
    Value stack[STACK_MAX];
    Value* stackTop;
    //Table globals;
    Table globalNames;
    ValueArray globalValues;
    Table strings;
    Obj* objects;
} VM;

typedef enum {
    INTERPRET_OK,
    INTERPRET_COMPILE_ERROR,
    INTERPRET_RUNTIME_ERROR
} InterpretResult;

extern VM vm;

void initVM();
void freeVM();
static void resetStack();
static void runtimeError(const char* format, ...);
static InterpretResult run();
InterpretResult interpret(const int8_t* source);
void push(Value value);
Value pop();
static Value check(int16_t distance);
static bool isFalsey(Value value);

#endif