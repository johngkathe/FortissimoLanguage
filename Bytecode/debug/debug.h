#ifndef debug_h
#define debug_h

#include "../chunk/chunk.h"

#include <stdint.h>

void disassembleChunk(Chunk* chunk, const int8_t* name);
int16_t disassembleInstruction(Chunk* chunk, int16_t offset);
static int16_t simpleInstruction(const int8_t* name, int16_t offset);
static int16_t constantInstruction(const int8_t* name, Chunk* chunk, int16_t offset);
static int16_t longConstantInstruction(const int8_t* name, Chunk* chunk, int16_t offset);
static int16_t byteInstruction(const int8_t* name, Chunk* chunk, int16_t offset);
static int16_t jumpInstruction(const int8_t* name, int16_t sign, Chunk* chunk, int16_t offset);
void printValue(Value value);

#endif