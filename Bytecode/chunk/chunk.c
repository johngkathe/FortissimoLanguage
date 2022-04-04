#include "chunk.h"
#include "../memory/memory.h"

#include <stdlib.h>
#include <stdint.h>

int16_t addConstant(Chunk* chunk, Value value){
    writeValueArray(&chunk->constants, value);
    return chunk->constants.count - 1;
}

void initChunk(Chunk* chunk){
    chunk->count = 0;
    chunk->capacity = 0;
    chunk->code = NULL;     //HERE
    chunk->lineCount = 0;
    chunk->lineCapacity = 0;
    chunk->lines = NULL;    //HERE
    initValueArray(&chunk->constants);
}

void freeChunk(Chunk* chunk){
    FREE_ARRAY(uint8_t, chunk->code, chunk->capacity);
    FREE_ARRAY(uint16_t, chunk->lines, chunk->capacity);
    freeValueArray(&chunk->constants);
    initChunk(chunk);
    FREE_ARRAY(LineStart, chunk->lines, chunk->lineCapacity);
}

int16_t getLine(Chunk* chunk, int16_t instruction){
    int16_t start = 0;
    int16_t end = chunk->lineCount - 1;

    for(;;){
        int16_t mid = (start + end)/2;
        LineStart* line = &chunk->lines[mid];
        if(instruction < line->offset){
            end = mid - 1;
        } else if(mid == chunk->lineCount - 1 || instruction < chunk->lines[mid + 1].offset){
            return line->line;
        } else {
            start = mid + 1;
        }
    }
}

void writeConstant(Chunk* chunk, Value value, int16_t line){
    int index = addConstant(chunk, value);
    if(index < 256){
        writeChunk(chunk, OP_CONSTANT, line);
        writeChunk(chunk, (uint8_t)index, line);
    } else {
        writeChunk(chunk, OP_CONSTANT_LONG, line);
        writeChunk(chunk, (uint8_t)(index & 0xff), line);
        writeChunk(chunk, (uint8_t)((index >> 8) & 0xff), line);
        writeChunk(chunk, (uint8_t)((index >> 16) & 0xff), line);
    }
}

void writeChunk(Chunk* chunk, uint8_t byte, int16_t line){
    if(chunk->capacity < chunk->count + 1){
        int16_t oldCapacity = chunk->capacity;
        chunk->capacity = GROW_CAPACITY(oldCapacity);
        chunk->code = GROW_ARRAY(uint8_t, chunk->code, oldCapacity, chunk->capacity);
    }

    chunk->code[chunk->count] = byte;
    chunk->count++;

    if(chunk->lineCount > 0 && chunk->lines[chunk->lineCount - 1].line == line) return;

    if(chunk->lineCapacity < chunk->lineCount + 1){
        int16_t oldCapacity = chunk->lineCapacity;
        chunk->lineCapacity = GROW_CAPACITY(oldCapacity);
        chunk->lines = GROW_ARRAY(LineStart, chunk->lines, oldCapacity, chunk->lineCapacity);
    }

    LineStart* lineStart = &chunk->lines[chunk->lineCount++];
    lineStart->offset = chunk->count - 1;
    lineStart->line = line;
}

