#include "../../Bytecode/memory/memory.h"
#include "../../Bytecode/value/value.h"
#include "object.h"
#include "../table/table.h"
#include "../../VirtualMachine/vm/vm.h"

#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ALLOCATE_OBJ(type, objectType) \
    (type*)allocateObject(sizeof(type), objectType)

static Obj* allocateObject(size_t size, ObjType type){
    Obj* object = (Obj*)reallocate(NULL, 0, size);
    object->type = type;

    object->next = vm.objects;
    vm.objects = object;
    return object;
}

static ObjString* allocateString(int8_t* chars, int32_t length, uint32_t hash){
    ObjString* string = ALLOCATE_OBJ(ObjString, OBJ_STRING);
    string->length = length;
    string->chars = chars;
    string->hash = hash;
    tableSet(&vm.strings, string, NIL_VAL);
    return string;
}

/*FNV-1 Hash Function*/
static uint32_t hashString(const int8_t* key, int32_t length){
    uint32_t hash = 216613626lu;
    ptrdiff_t i;
    for(i = 0; i<length; i++){
        hash *= 16777619;
        hash ^= (uint8_t)key[i];
        /* hash ^= (uint8_t)key[i]; /*Change these two lines with the above to*/
        /* hash *= 16777619;        /*use FNV-1a hash function*/
    }
    return hash;
}

ObjString* takeString(int8_t* chars, int32_t length){
    uint32_t hash = hashString(chars, length);
    ObjString* interned = tableFindString(&vm.strings, chars, length, hash);
    if(interned != NULL){
        FREE_ARRAY(int8_t, chars, length + 1);
        return interned;
    } 

    return allocateString(chars, length, hash);
}

ObjString* copyString(const int8_t* chars, int32_t length){
    uint32_t hash = hashString(chars, length);
    ObjString* interned = tableFindString(&vm.strings, chars, length, hash);
    if(interned != NULL) return interned;

    int8_t* heapChars = ALLOCATE(int8_t, length + 1);
    memcpy(heapChars, chars, length);
    heapChars[length] = '\0';
    return allocateString(heapChars, length, hash);
}

void printObject(Value value){
    switch(OBJ_TYPE(value)){
        case OBJ_STRING:
            printf("%s", AS_CSTRING(value));
            break;
    }
}
