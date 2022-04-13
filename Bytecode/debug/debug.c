#include "debug.h"
#include "../value/value.h"


#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

void disassembleChunk(Chunk* chunk, const int8_t* name){
    printf("== %s ==\n", name);

    int16_t offset;
    for(offset = 0; offset < chunk->count;){
        offset = disassembleInstruction(chunk, offset);
    }
}

int16_t disassembleInstruction(Chunk* chunk, int16_t offset){
    printf("%04d ", offset);
    int16_t line = getLine(chunk, offset);
    if(offset > 0 && line == getLine(chunk, offset - 1)){
        printf("   | ");
    } else {
        printf("%4d ", line);
    }

    uint8_t instruction = chunk->code[offset];
    switch(instruction){
        case OP_CONSTANT:
            return constantInstruction("OP_CONSTANT", chunk, offset);
        case OP_CONSTANT_LONG:
            return constantInstruction("OP_CONSTANT_LONG", chunk, offset);
        case OP_NIL:
            return simpleInstruction("OP_NIL", offset);
        case OP_TRUE:
            return simpleInstruction("OP_TRUE", offset);
        case OP_FALSE:
            return simpleInstruction("OP_FALSE", offset);
        case OP_POP:
            return simpleInstruction("OP_POP", offset);
        case OP_CLOSE_UPVALUE:
            printf("CLOSE_UPVALUE\n"); break;
        case OP_DEFINE_GLOBAL:
            return constantInstruction("OP_DEFINE_GLOBAL", chunk, offset);
        case OP_SET_GLOBAL:
            return constantInstruction("OP_SET_GLOBAL", chunk, offset);
        case OP_GET_GLOBAL:
            return constantInstruction("OP_GET_GLOBAL", chunk, offset); 
        case OP_SET_LOCAL:
            return byteInstruction("OP_SET_LOCAL", chunk, offset);
        case OP_GET_LOCAL:
            return byteInstruction("OP_GET_LOCAL", chunk, offset);
        case OP_EQUAL:
            return simpleInstruction("OP_EQUAL", offset);
        case OP_LESS:
            return simpleInstruction("OP_LESS", offset);
        case OP_GREATER:
            return simpleInstruction("OP_GREATER", offset);
        case OP_ADD:
            return simpleInstruction("OP_ADD", offset);
        case OP_SUBTRACT:
            return simpleInstruction("OP_SUBTRACT", offset);
        case OP_MULTIPLY:
            return simpleInstruction("OP_MULTIPLY", offset);
        case OP_DIVIDE:
            return simpleInstruction("OP_DIVIDE", offset);
        case OP_MODULATE:
            return simpleInstruction("OP_MODULATE", offset);
        case OP_EXPONENTIATE:
            return simpleInstruction("OP_EXPONENTIATE", offset);
        case OP_NOT:
            return simpleInstruction("OP_NOT", offset);
        case OP_NEGATE:
            return simpleInstruction("OP_NEGATE", offset);
        case OP_PUTS:
            return simpleInstruction("OP_PUTS", offset);
        case OP_JUMP:
            return jumpInstruction("OP_JUMP", 1, chunk, offset);
        case OP_JUMP_IF_FALSE:
            return jumpInstruction("OP_JUMP_IF_FALSE", 1, chunk, offset);
        case OP_JUMP_IF_TRUE:
            return jumpInstruction("OP_JUMP_IF_TRUE", 1, chunk, offset);
        case OP_LOOP:
            return jumpInstruction("OP_LOOP", -1, chunk, offset);
        case OP_RETURN:
            return simpleInstruction("OP_RETURN", offset);
        default:
            printf("Unknown opcode %d\n", instruction);
            return offset + 1;
    }
}

static int16_t constantInstruction(const int8_t* name, Chunk* chunk, int16_t offset){
    uint8_t constant = chunk->code[offset + 1];
    printf("%-16s %4d '", name, constant);
    if(!chunk->constants.values || &chunk->constants.values[constant] == NULL)
        printf("NULL");
    else printValue(chunk->constants.values[constant]);
    printf("'\n");
    return offset + 2;
}

static int16_t longConstantInstruction(const int8_t* name, Chunk* chunk, int16_t offset){
    uint32_t constant = chunk->code[offset + 1] | (chunk->code[offset + 2] << 8)
                                               | (chunk->code[offset + 3] << 16);
    printf("%-16s %4d '", name, constant);
    if(!chunk->constants.values || &chunk->constants.values[constant] == NULL)
        printf("NULL");
    else printValue(chunk->constants.values[constant]);
    printf("'\n");
    return offset + 4;
}

static int16_t simpleInstruction(const int8_t* name, int16_t offset){
    printf("%s\n", name);
    return offset + 2;
}

static int16_t byteInstruction(const int8_t* name, Chunk* chunk, int16_t offset){
    uint8_t slot = chunk->code[offset + 1];
    printf("%-16s %4d\n", name, slot);
    return offset + 2;
}

static int16_t jumpInstruction(const int8_t* name, int16_t sign, Chunk* chunk, int16_t offset){
    uint16_t jump = (uint16_t)(chunk->code[offset + 1] << 8);
    jump |= chunk->code[offset  + 2];
    printf("%-16s %4d -> %d\n", name, offset, offset + 3 + sign * jump);
    return offset + 3;
}