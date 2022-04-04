#ifndef table_h
#define table_h

#include "../../common/common.h"
#include "../../Bytecode/value/value.h"

#include <stddef.h>
#include <stdint.h>

typedef struct {
    ObjString* key;
    Value value;
} Entry;

typedef struct {
    size_t count;
    size_t capacity;
    Entry* entries;
} Table;

void initTable(Table* table);
void freeTable(Table* table);
bool tableSet(Table* table, ObjString* key, Value value);
void tableAddAll(Table* from, Table* to);
bool tableGet(Table* table, ObjString* key, Value* value);
bool tableDelete(Table* table, ObjString* key);
ObjString* tableFindString(Table* table, const int8_t* chars, int16_t length, uint32_t hash);

#endif