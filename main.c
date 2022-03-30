#include "Bytecode/chunk/chunk.h"
#include "Bytecode/debug/debug.h"
#include "common/common.h"
#include "VirtualMachine/vm/vm.h"

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

static void repl(){
    int8_t line[1024];
    for(;;){
        printf("> ");

        if(!fgets(line, sizeof(line), stdin)){
            printf("\n");
            break;
        }

        interpret(line);
    }
}

static char* readFile(const int8_t* path){
    FILE* file = fopen(path, "rb");
    if(file == NULL){
        fprintf(stderr, "Could not open file \"%s\".\n", path);
        exit(74);
    }

    fseek(file, 0L, SEEK_END);
    size_t fileSize = ftell(file);
    rewind(file);

    int8_t* buffer = (int8_t*)malloc(fileSize + 1);
    if(buffer == NULL){
        fprintf(stderr, "Not enough memory to read \"%s\".\n", path);
        exit(74);
    }

    size_t bytesRead = fread(buffer, sizeof(int8_t), fileSize, file);
    if(bytesRead < fileSize){
        fprintf(stderr, "Could not read file \"%s\".\n", path);
        exit(74);
    }

    buffer[bytesRead] = '\0';

    fclose(file);
    return buffer;
}

static void runFile(const int8_t* path){
    int8_t* source = readFile(path);
    InterpretResult result = interpret(source);
    free(source);

    if(result == INTERPRET_COMPILE_ERROR) exit(65);
    if(result == INTERPRET_RUNTIME_ERROR) exit(70);
}

int main(int16_t argc, const int8_t* argv[]){
    initVM();

    if (argc == 1){
        repl();
    } else if (argc == 2){
        runFile(argv[1]);
    } else {
        fprintf(stderr, "Usage: fortissimo [path]\n");
        exit(64);
    }

    freeVM();
    return 0;
}