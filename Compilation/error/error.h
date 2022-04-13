#ifndef error_h
#define error_h

#include "../compiler/compiler.h"
#include "../../Tokenization/scanner/scanner.h"

#include <stdio.h>
#include <stdlib.h>

Parser parser;

/*Provides the bulk of error information for the compiler.*/
static void errorAt(Token* token, const char* message){
    if(parser.panicMode) return;
    parser.panicMode = true;
    /*Prints the line number where the error occurs.*/
    fprintf(stderr, "[Line %d] Error", token->line);

    if(token->type == TK_EOF){  /*Pinpoints and documents EOF errors*/
        fprintf(stderr, " at end.");
    } else if (token->type == TK_ERROR){/*nothing*/
    } else {
        fprintf(stderr, " at '%.*s'", token->length, token->start);
    }

    /*Takes in the pertinent message from one of the below functions*/
    /*to print for diagnostic information.*/
    fprintf(stderr, ": %s\n", message);
    parser.hadError = true;
}

/*Displays an error message when an error occurred at*/
/*the parser's previous location.*/
static void error(const char* message){
    errorAt(&parser.previous, message);
}

/*Displays an error message when an error occurs at*/
/*the parser's current location.*/
static void errorAtCurrent(const char* message){
    errorAt(&parser.current, message);
}

#endif