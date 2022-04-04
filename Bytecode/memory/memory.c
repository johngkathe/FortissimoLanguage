#include "memory.h"
#include "../../VirtualMachine/vm/vm.h"

#include <stdint.h>
#include <stdlib.h>

void* reallocate(void* pointer, size_t oldSize, size_t newSize){
    if(newSize == 0){
        free(pointer);
        return NULL;
    }

    void* result = realloc(pointer, newSize);
    if(result == NULL) exit(1);
    if(newSize > oldSize) memset(result + oldSize), 0, newSize - oldSize);
    return result;
}

static void freeObject(Obj* object){
    switch(object->type){
        case OBJ_STRING:{
            ObjString* string = (ObjString*)object;
            FREE_ARRAY(int8_t, string->chars, string->length + 1);
            FREE(ObjString, object);
            break;
        }   
    }
}

void freeObjects(){
    Obj* object = vm.objects;
    while(object != NULL){
        Obj* next = object->next;
        freeObject(object);
        object = next;
    }
}
