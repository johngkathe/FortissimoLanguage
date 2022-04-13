#!/bin/bash

: "${TESTDIR:=_Tests/*ff}"
: "${EXEC:=fortissimo_bytecode}"
: "${VFLAGS:=--leak-check=full --show-leak-kinds=all --track-origins=yes -s}"

for file in ../$TESTDIR
do valgrind $VFLAGS ../$EXEC $file || echo "*File failed."
done
