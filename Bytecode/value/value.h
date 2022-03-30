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
#define IS_DOUBLE(value)    (((value) & QNAN) != QNAN)
#define IS_OBJ(value) \
    (((value) & (QNAN | SIGN_BIT)) == (QNAN | SIGN_BIT))

#define AS_BOOL(value)      ((value) == TRUE_VAL)
#define AS_DOUBLE(value)    valueToDbl(value)
#define AS_OBJ(value) \
    ((Obj*)(uintptr_t)((value) & ~(SIGN_BIT | QNAN)))

#define BOOL_VAL(b)         ((b) ? TRUE_VAL : FALSE_VAL)
#define FALSE_VAL           ((Value)(uint64_t)(QNAN | TAG_FALSE))
#define TRUE_VAL            ((Value)(uint64_t)(QNAN | TAG_TRUE))
#define NIL_VAL             ((Value)(uint64_t)(QNAN | TAG_NIL))
#define UNDEFINED_VAL
#define DOUBLE_VAL(dbl)     dblToValue(dbl)
#define OBJ_VAL(obj) \
    (Value)(SIGN_BIT | QNAN | (uint64_t)(uintptr_t)(obj))

static inline double valueToDbl(Value value){
    double dbl;
    memccpy(&dbl, &value, sizeof(Value));
    return dbl;
}
static inline Value dblToValue(double dbl){
    Value value;
    memccpy(&value, &dbl, sizeof(double));
    return value;
}

#else

typedef enum {
    VAL_UNDEFINED,
    VAL_NIL,
    VAL_BOOL,
    VAL_CHAR,
    VAL_UCHAR,
    VAL_INT,
    VAL_UINT,
    VAL_LONG,
    VAL_ULONG,
    VAL_FLOAT,
    VAL_LONGLONG,
    VAL_ULONGLONG,
    VAL_DOUBLE,
    VAL_DOUBLELONG, //implement with knowledge!
    VAL_OBJ
} ValueType;

typedef struct {
    ValueType type;
    union {
        bool boolean;
        int8_t ch;
        uint8_t uCh;
        int16_t in;
        uint16_t uIn;
        int32_t lng;
        uint32_t uLng;
        float  flt;
        int64_t lnglng;
        uint64_t uLnglng;
        double dbl;
        double long dbllng; //implement with knowledge
        Obj* obj;
    } as;  
} Value;

#define IS_UNDEFINED(value) ((value).type == VAL_UNDEFINED)
#define IS_NIL(value)       ((value).type == VAL_NIL)
#define IS_BOOL(value)      ((value).type == VAL_BOOL)
#define IS_NUMBER(value)    ((value).type != VAL_NIL && (value).type != VAL_BOOL);
#define IS_CHAR(value)      ((value).type == VAL_CHAR)
#define IS_UCHAR(value)     ((value).type == VAL_UCHAR)
#define IS_INT(value)       ((value).type == VAL_INT)
#define IS_UINT(value)      ((value).type == VAL_UINT)
#define IS_LONG(value)      ((value).type == VAL_LONG)
#define IS_ULONG(value)     ((value).type == VAL_ULONG)
#define IS_FLOAT(value)     ((value).type == VAL_FLOAT)
#define IS_LONGLONG(value)  ((value).type == VAL_LONGLONG)
#define IS_ULONGLONG(value) ((value).type == VAL_ULONGLONG)
#define IS_DOUBLE(value)    ((value).type == VAL_DOUBLE)
#define IS_DOUBLELONG(value) ((value).type == VAL_DOUBLELONG) //implement with knowledge
#define IS_OBJ(value)       ((value).type == VAL_OBJ)

#define AS_BOOL(value)      ((value).as.boolean)
#define AS_CHAR(value)      ((value).as.ch)
#define AS_UCHAR(value)     ((value).as.uCh)
#define AS_INT(value)       ((value).as.in)
#define AS_UINT(value)      ((value).as.uIn)
#define AS_LONG(value)      ((value).as.lng)
#define AS_ULONG(value)     ((value).as.uLng)
#define AS_FLOAT(value)     ((value).as.flt)
#define AS_LONGLONG(value)  ((value).as.lnglng)
#define AS_ULONGLONG(value) ((value).as.uLnglng)
#define AS_DOUBLE(value)    ((value).as.dbl)
#define AS_DOUBLELONG(value) ((value).as.dbllng) //implement with knowledge
#define AS_OBJ(value)       ((value).as.obj)

#define UNDEFINED_VAL       ((Value){VAL_UNDEFINED})
#define NIL_VAL             ((Value){VAL_NIL, {.dbl = 0}})
#define BOOL_VAL(value)     ((Value){VAL_BOOL, {.boolean = value}})
#define CHAR_VAL(value)     ((Value){VAL_CHAR, {.ch = value}})
#define UCHAR_VAL(value)    ((Value){VAL_UCHAR, {.uCh = value}})
#define INT_VAL(value)      ((Value){VAL_INT, {.in = value}})
#define UINT_VAL(value)     ((Value){VAL_UINT, {.uIn = value}})
#define LONG_VAL(value)     ((Value){VAL_LONG, {.lng = value}})
#define ULONG_VAL(value)    ((Value){VAL_ULONG, {.uLng = value}})
#define FLOAT_VAL(value)    ((Value){VAL_FLOAT, {.flt = value}})
#define LONGLONG_VAL(value) ((Value){VAL_LONGLONG, {.lnglng = value}})
#define ULONGLONG_VAL(value) ((Value){VAL_ULONGLONG, {.uLnglng = value}})
#define DOUBLE_VAL(value)   ((Value){VAL_DOUBLE, {.dbl = value}})
#define DOUBLELONG_VAL(value) ((Value){VAL_DOUBLELONG, {.dbllng = value}})
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