#ifndef object_h
#define object_h

#include "../../common/common.h"
#include "../../Bytecode/value/value.h"

#include <stdint.h>

#define OBJ_TYPE(value)     (AS_OBJ(value)->type)

#define IS_STRING(value)    isObjType(value, OBJ_STRING)

#define AS_STRING(value)    ((ObjString*)AS_OBJ(value))
#define AS_CSTRING(value)   (((ObjString*)AS_OBJ(value))->chars)

typedef enum {
    OBJ_STRING,
} ObjType;

struct Obj {
    ObjType type;
    struct Obj* next;
};

struct ObjString {
    Obj obj;
    int16_t length;
    int8_t* chars;
    uint32_t hash;
};

ObjString* takeString(int8_t* chars, int16_t length);
ObjString* copyString(const int8_t* chars, int16_t length);
void printObject(Value value);

static inline bool isObjType(Value value, ObjType type){
    return IS_OBJ(value) && AS_OBJ(value)->type == type;
}

#endif