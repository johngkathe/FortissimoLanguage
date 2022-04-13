#ifndef emit_h
#define emit_h

#include "../../Bytecode/value/value.h"
#include "../compiler/compiler.h"
#include "../error/error.h"

Parser parser;

static void emitByte(uint8_t byte){
    writeChunk(currentChunk(), byte, parser.previous.line);
}

static void emitBytes(uint8_t byte1, uint8_t byte2){
    emitByte(byte1);
    emitByte(byte2);
}

static void emitLoop(int32_t loopStart){
    emitByte(OP_LOOP);

    int32_t offset = currentChunk()->count - loopStart + 2;
    if(offset > UINT16_MAX) error("Loop body is too large.");

    emitByte((offset >> 8) & 0xff);
    emitByte(offset & 0xff);
}

static int32_t emitJump(uint8_t instruction){
    emitByte(instruction);
    /*this is 2**16 bytes of code.  Might have to adjust.*/
    emitByte(0xff);
    emitByte(0xff);
    return currentChunk()->count - 2;
}

static int32_t emitJumpPlus(uint8_t instruction1, uint8_t instruction2){
    emitBytes(instruction1, instruction2);
    emitByte(0xff);
    emitByte(0xff);
    return currentChunk()->count - 2;
}

static void patchJump(int32_t offset){ /*Pertains to emitJump*/
    /*-2 to addjust for the bytecode for the jump offset itself.*/
    int32_t jump = currentChunk()->count - offset - 2;

    if(jump > UINT16_MAX){
        error("Too much code to jump over.");
    }

    currentChunk()->code[offset] = (jump >> 8) & 0xff;
    currentChunk()->code[offset + 1] = jump & 0xff;
}

static void emitReturn(){
    emitByte(OP_RETURN);
}

static void emitConstant(Value value){
    emitBytes(OP_CONSTANT, makeConstant(value));
}


#endif