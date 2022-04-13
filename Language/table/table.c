#include "../../Bytecode/memory/memory.h"
#include  "../../Bytecode/value/value.h"
#include "../object/object.h"
#include "table.h"

#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define TABLE_MAX_LOAD 0.75

void initTable(Table* table){
    table->count = 0;
    table->capacity = 0;
    table->entries = NULL;
}

void freeTable(Table* table){
    FREE_ARRAY(Entry, table->entries, table->capacity);
    initTable(table);
}

static Entry* findEntry(Entry* entries, size_t capacity, ObjString* key){
    size_t index = key->hash % capacity;    /*size_t since unsigned*/
    Entry* tombstone = NULL;

    for(;;){
        Entry* entry = &entries[index];
        if(entry->key == NULL){
            if(IS_NIL(entry->value)){
                return tombstone != NULL ? tombstone : entry;
            } else {
             if(tombstone == NULL) tombstone = entry;
            }
        } else if(entry->key == key){
            return entry;
        }

        index = (index + 1) % capacity; 
    }
}

static void adjustCapacity(Table* table, size_t capacity){
    Entry* entries = ALLOCATE(Entry, capacity);
    ptrdiff_t i;

    for(i = 0; i < capacity; i++){
        entries[i].key = NULL;
        entries[i].value = NIL_VAL;
    }

    table->count = 0;
    for(i = 0; i < table->capacity; i++){
        Entry* entry = &table->entries[i];
        if(entry->key == NULL) continue;

        Entry* destination = findEntry(entries, capacity, entry->key);
        destination->key = entry->key;
        destination->value = entry->value;
        table->count++;
    }

    FREE_ARRAY(Entry, table->entries, table->capacity);
    table->entries = entries;
    table->capacity = capacity;
}

bool tableSet(Table* table, ObjString* key, Value value){
    if(table->count + 1 > table->capacity * TABLE_MAX_LOAD){
        size_t capacity = GROW_CAPACITY(table->capacity);
        adjustCapacity(table, capacity);
    }

    Entry* entry = findEntry(table->entries, table->capacity, key);
    bool isNewKey = entry->key == NULL;
    if(isNewKey && IS_NIL(entry->value)) table->count++;

    entry->key = key;
    entry->value = value;
    return isNewKey;
}

void tableAddAll(Table* from, Table* to){
    ptrdiff_t i;
    for(i = 0; i < from->capacity; i++){
        Entry* entry = &from->entries[i];
        if(entry->key != NULL) tableSet(to, entry->key, entry->value);
    }
}

ObjString* tableFindString(Table* table, const int8_t* chars, int32_t length, uint32_t hash){
    if(table->count == 0) return NULL;

    size_t index = hash % table->capacity;
    for(;;){
        Entry* entry = &table->entries[index];
        if(entry->key == NULL){ /*Stop if we find an empty non-tombstone entry*/
            if(IS_NIL(entry->value)) return NULL;
        } else if(entry->key->length == length && entry->key->hash == hash && 
                  memcmp(entry->key->chars, chars, length) == 0){
                    return entry->key;
                }         
        index = (index + 1) % table->capacity;
    }
}

bool tableGet(Table* table, ObjString* key, Value* value){
    if(table->count == 0) return false;

    Entry* entry = findEntry(table->entries, table->capacity, key);
    if(entry->key == NULL) return false;

    *value = entry->value;
    return true;
}

bool tableDelete(Table* table, ObjString* key){
    if(table->count == 0) return false;

    /*Find the entry.*/
    Entry* entry = findEntry(table->entries, table->capacity, key);
    if(entry->key == NULL) return false;

    /*Place tombstone in the entry.*/
    entry->key = NULL;
    entry->value = BOOL_VAL(true);
    return true;
}