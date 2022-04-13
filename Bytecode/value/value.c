#include "value.h"
#include "../memory/memory.h"
#include "../../Language/object/object.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>

bool valuesEqual(Value a, Value b){
    if(a.type != b.type) return false;
    switch(a.type){
        case VAL_BOOL:  return AS_BOOL(a) == AS_BOOL(b);
        case VAL_NIL:   return true;
        case VAL_OBJ:   return AS_OBJ(a) == AS_OBJ(b);
        case VAL_I8:    return AS_I8(a) == AS_I8(b);
        case VAL_U8:    return AS_U8(a) == AS_U8(b);
        case VAL_I16:   return AS_I16(a) == AS_I16(b);
        case VAL_U16:   return AS_U16(a) == AS_U16(b);
        case VAL_I32:   return AS_I32(a) == AS_I32(b);
        case VAL_U32:   return AS_U32(a) == AS_U32(b);
        case VAL_I64:   return AS_I64(a) == AS_I64(b);
        case VAL_U64:   return AS_U64(a) == AS_U64(b);
        case VAL_F32:   return AS_F32(a) == AS_F32(b);
        case VAL_F64:   return AS_F64(a) == AS_F64(b);
        case VAL_F128:  return AS_F128(a) == AS_F128(b);
        default:        return false; /*Unreachable.*/
    }
}

void initValueArray(ValueArray* array){
    array->values = NULL;
    array->capacity = 0;
    array->count = 0;
}

void writeValueArray(ValueArray* array, Value value){
    if(array->capacity < array->count + 1){
        int32_t oldCapacity = array->capacity;
        array->capacity = GROW_CAPACITY(oldCapacity);
        array->values = GROW_ARRAY(Value, array->values, oldCapacity, array->capacity);
    }

    array->values[array->count] = value;
    array->count++;
}

void freeValueArray(ValueArray* array){
    FREE_ARRAY(Value, array->values, array->capacity);
    initValueArray(array);
}

void printValue(Value value){
    switch(value.type){
        case VAL_BOOL:
            printf(AS_BOOL(value) ? "true" : "false");
            break;
        case VAL_NIL:   printf("nil"); break;
        case VAL_OBJ:   printObject(value); break;
        case VAL_I8:    printf("%c", AS_I8(value)); break;
        case VAL_U8:    printf("%u", AS_U8(value)); break;
        case VAL_I16:   printf("%d", AS_I16(value)); break;
        case VAL_U16:   printf("%u", AS_U16(value)); break;
        case VAL_I32:   printf("%u", AS_I32(value)); break;
        case VAL_U32:   printf("%u", AS_U32(value)); break;
        case VAL_I64:   printf("%lu", AS_I64(value)); break;
        case VAL_U64:   printf("%lu", AS_U64(value)); break;
        case VAL_F32:   printf("%f", AS_F32(value)); break;
        case VAL_F64:   printf("%g", AS_F64(value)); break;
        case VAL_F128:  printf("%Lf", AS_F128(value)); break;
    }  
}