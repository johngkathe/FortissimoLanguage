#ifndef brace_h
#define brace_h

#include "../compiler/compiler.h"
#include "../emit/emit.h"

Compiler* current = NULL;

static void beginScope(){
    current->scopeDepth++;
}

static void endScope(){
    current->scopeDepth--;

    while(current->localCount > 0 && current->locals[current->localCount - 1].depth > current->scopeDepth){
        emitByte(OP_POP);
        current->localCount--;
    }
}

static void block(){
    while(!verify(TK_RIGHT_BRACE) && !verify(TK_EOF)){
        statement();
    }
    
    consume(TK_RIGHT_BRACE, "Expected '}' after block.");
}

#endif