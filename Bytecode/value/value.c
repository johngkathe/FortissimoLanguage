#include "value.h"
#include "../memory/memory.h"
#include "../../Language/object/object.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>

bool valuesEqual(Value a, Value b){
    if(a.type != b.type) return false;
    switch(a.type){
        case VAL_NIL:        return true;
        case VAL_BOOL:       return AS_BOOL(a) == AS_BOOL(b);
        case VAL_OBJ:        return AS_OBJ(a) == AS_OBJ(b);
        case VAL_CHAR:       return AS_CHAR(a) == AS_CHAR(b);
        case VAL_UCHAR:      return AS_UCHAR(a) == AS_UCHAR(b);
        case VAL_INT:        return AS_INT(a) == AS_INT(b);
        case VAL_UINT:       return AS_UINT(a) == AS_UINT(b);
        case VAL_LONG:       return AS_LONG(a) == AS_LONG(b);
        case VAL_ULONG:      return AS_ULONG(a) == AS_ULONG(b);
        case VAL_FLOAT:      return AS_FLOAT(a) == AS_FLOAT(b);
        case VAL_LONGLONG:   return AS_LONGLONG(a) == AS_LONGLONG(b);
        case VAL_ULONGLONG:  return AS_ULONGLONG(a) == AS_ULONGLONG(b);
        case VAL_DOUBLE:     return AS_DOUBLE(a) == AS_DOUBLE(b);
        case VAL_DOUBLELONG: return AS_DOUBLELONG(a) == AS_DOUBLELONG(b);
        default:             return false; //Unreachable.
    }
}

void initValueArray(ValueArray* array){
    array->values = NULL;
    array->capacity = 0;
    array->count = 0;
}

void writeValueArray(ValueArray* array, Value value){
    if(array->capacity < array->count + 1){
        int16_t oldCapacity = array->capacity;
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
        case VAL_NIL:    printf("nil"); break;
        case VAL_OBJ:    printObject(value); break;
        case VAL_CHAR:   printf("%c", AS_CHAR(value)); break;
        case VAL_UCHAR:  printf("%u", AS_UCHAR(value)); break;
        case VAL_INT:    printf("%d", AS_INT(value)); break;
        case VAL_UINT:   printf("%u", AS_UINT(value)); break;
        case VAL_LONG:   printf("%u", AS_LONG(value)); break;
        case VAL_ULONG:  printf("%u", AS_ULONG(value)); break;
        case VAL_LONGLONG:   printf("%lu", AS_LONGLONG(value)); break;
        case VAL_ULONGLONG:  printf("%lu", AS_ULONGLONG(value)); break;
        case VAL_FLOAT:  printf("%f", AS_FLOAT(value)); break;
        case VAL_DOUBLE: printf("%g", AS_DOUBLE(value)); break;
        case VAL_DOUBLELONG: printf("%Lf", AS_DOUBLELONG(value)); break;
    }
    
}