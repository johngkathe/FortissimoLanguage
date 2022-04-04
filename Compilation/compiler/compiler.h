#ifndef compiler_h
#define compiler_h

#include "../../Language/object/object.h"
#include "../../Tokenization/scanner/scanner.h"
#include "../../VirtualMachine/vm/vm.h"

#include <stdint.h>


bool compile(const int8_t* source, Chunk* chunk);
Token scanToken();

#endif