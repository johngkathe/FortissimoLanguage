#!/bin/bash

for file in ../_Tests/*.ff
do valgrind --leak-check=full --show-leak-kinds=all -s 
    ../fortissimo_bytecode $file || echo "*File failed."
done