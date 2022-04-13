#ifndef value_h
#define value_h

#include "../../common/common.h"

#include <stdint.h>
#include <string.h>

typedef struct Obj Obj;
typedef struct ObjString ObjString;

#ifdef NAN_BOXING

#define SIGN_BIT    ((uint64_t)0x8000000000000000)
#define QNAN        ((uint64_t)0x7ffc000000000000) 

#define TAG_NIL     1   //01
#define TAG_FALSE   2   //10
#define TAG_TRUE    3   //11

typedef uint64_t Value;

#define IS_NIL(value)       ((value) == NIL_VAL)
#define IS_BOOL(value)      (((value) | 1) == TRUE_VAL)
#define IS_F64(value)    (((value) & QNAN) != QNAN)
#define IS_OBJ(value) \
    (((value) & (QNAN | SIGN_BIT)) == (QNAN | SIGN_BIT))

#define AS_BOOL(value)      ((value) == TRUE_VAL)
#define AS_F64(value)    valueToF64(value)
#define AS_OBJ(value) \
    ((Obj*)(uintptr_t)((value) & ~(SIGN_BIT | QNAN)))

#define BOOL_VAL(b)         ((b) ? TRUE_VAL : FALSE_VAL)
#define FALSE_VAL           ((Value)(uint64_t)(QNAN | TAG_FALSE))
#define TRUE_VAL            ((Value)(uint64_t)(QNAN | TAG_TRUE))
#define NIL_VAL             ((Value)(uint64_t)(QNAN | TAG_NIL))
#define UNDEFINED_VAL
#define F64_VAL(dbl)     dblToValue(dbl)
#define OBJ_VAL(obj) \
    (Value)(SIGN_BIT | QNAN | (uint64_t)(uintptr_t)(obj))

static inline double valueToF64(Value value){
    double f64;
    memccpy(&f64, &value, sizeof(Value));
    return f64;
}
static inline Value f64ToValue(double f64){
    Value value;
    memccpy(&value, &f64, sizeof(double));
    return value;
}

#else

typedef enum {
    VAL_UNDEFINED,
    VAL_NIL,
    VAL_BOOL,
    VAL_I8,
    VAL_U8,
    VAL_I16,
    VAL_U16,
    VAL_I32,
    VAL_U32,
    VAL_I64,
    VAL_U64,
    VAL_F32,
    VAL_F64,
    VAL_F128,
    VAL_OBJ
} ValueType;

typedef struct {
    ValueType type;
    union {
        bool boolean;
        int8_t i8;
        uint8_t u8;
        int16_t i16;
        uint16_t u16;
        int32_t i32;
        uint32_t u32;
        int64_t i64;
        uint64_t u64;
        float  f32;
        double f64;
        double long f128;
        Obj* obj;
    } as;  
} Value;

#define IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)
#define IS_NIL(value)       ((value).type == VAL_NIL)
#define IS_BOOL(value)      ((value).type == VAL_BOOL)
#define IS_NUMBER(value)    ((value).type != VAL_NIL && (value).type != VAL_BOOL);
#define IS_I8(value)        ((value).type == VAL_I8)
#define IS_U8(value)        ((value).type == VAL_U8)
#define IS_I16(value)       ((value).type == VAL_I16)
#define IS_U16(value)       ((value).type == VAL_U16)
#define IS_I32(value)       ((value).type == VAL_I32)
#define IS_U32(value)       ((value).type == VAL_U32)
#define IS_I64(value)       ((value).type == VAL_I64)
#define IS_U64(value)       ((value).type == VAL_U64)
#define IS_F32(value)       ((value).type == VAL_F32)
#define IS_F64(value)       ((value).type == VAL_F64)
#define IS_F128(value)      ((value).type == VAL_F128)
#define IS_OBJ(value)       ((value).type == VAL_OBJ)

#define AS_BOOL(value)      ((value).as.boolean)
#define AS_I8(value)        ((value).as.i8)
#define AS_U8(value)        ((value).as.u8)
#define AS_I16(value)       ((value).as.i16)
#define AS_U16(value)       ((value).as.u16)
#define AS_I32(value)       ((value).as.i32)
#define AS_U32(value)       ((value).as.u32)
#define AS_I64(value)       ((value).as.i64)
#define AS_U64(value)       ((value).as.u64)
#define AS_F32(value)       ((value).as.f32)
#define AS_F64(value)       ((value).as.f64)
#define AS_F128(value)      ((value).as.f128)
#define AS_OBJ(value)       ((value).as.obj)

#define UNDEFINED_VAL       ((Value){VAL_UNDEFINED})
#define NIL_VAL             ((Value){VAL_NIL, {.f64 = 0}})
#define BOOL_VAL(value)     ((Value){VAL_BOOL, {.boolean = value}})
#define I8_VAL(value)     ((Value){VAL_I8, {.i8 = value}})
#define U8_VAL(value)    ((Value){VAL_U8, {.u8 = value}})
#define I16_VAL(value)      ((Value){VAL_I16, {.i16 = value}})
#define U16_VAL(value)     ((Value){VAL_U16, {.u16 = value}})
#define I32_VAL(value)     ((Value){VAL_I32, {.i32 = value}})
#define U32_VAL(value)    ((Value){VAL_U32, {.u32 = value}})
#define I64_VAL(value) ((Value){VAL_I64, {.i64 = value}})
#define U64_VAL(value) ((Value){VAL_U64, {.u64 = value}})
#define F32_VAL(value)    ((Value){VAL_F32, {.f32 = value}})
#define F64_VAL(value)   ((Value){VAL_F64, {.f64 = value}})
#define F128_VAL(value) ((Value){VAL_F128, {.f128 = value}})
#define OBJ_VAL(object)     ((Value){VAL_OBJ, {.obj = (Obj*)object}})     

#endif

typedef struct{
    int16_t capacity;
    int16_t count;
    Value* values;
} ValueArray;

bool valuesEqual(Value a, Value b);
void initValueArray(ValueArray* array);
void writeValueArray(ValueArray* array, Value value);
void freeValueArray(ValueArray* array);
void printValue(Value value);

#endif