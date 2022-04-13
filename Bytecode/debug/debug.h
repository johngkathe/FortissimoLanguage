#ifndef debug_h
#define debug_h

#include "../chunk/chunk.h"

#include <stdint.h>

void disassembleChunk(Chunk* chunk, const int8_t* name);
int32_t disassembleInstruction(Chunk* chunk, int32_t offset);
static int32_t simpleInstruction(const int8_t* name, int32_t offset);
static int32_t constantInstruction(const int8_t* name, Chunk* chunk, int32_t offset);
static int32_t longConstantInstruction(const int8_t* name, Chunk* chunk, int32_t offset);
static int32_t byteInstruction(const int8_t* name, Chunk* chunk, int32_t offset);
static int32_t jumpInstruction(const int8_t* name, int32_t sign, Chunk* chunk, int32_t offset);
void printValue(Value value);

#endif