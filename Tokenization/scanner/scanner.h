#ifndef scanner_h
#define scanner_h

#include <stdint.h>

typedef enum {
    /*Parentheses+*/
    TK_LEFT_PAREN,   /*'('*/
    TK_RIGHT_PAREN,  /*')'*/
    TK_LEFT_BRACE,   /*'{'*/
    TK_RIGHT_BRACE,  /*'}'*/
    TK_LEFT_BRACK,   /*'['*/
    TK_RIGHT_BRACK,  /*']'*/
    TK_LTLBRACE,     /*'<{': Start parameterless function.*/
    TK_RBRACEGT,     /*'}>': End void function.*/
    TK_LTLPAREN,     /*'<(': Start of parameterized function.*/
    TK_RPARENLBRACE, /*'){': Second half of start of parameterized function.*/
    TK_RBRACELPAREN, /*'}(': Start of non-void return parameter of function.*/
    TK_RPARENGT,     /*')>': Second half of return parameter of function.*/

    /*Punctuation.*/
    TK_BANG,         /*'!'*/
    TK_BANGBANG,     /*'!!': For returning truthiness of statement.*/
    TK_QUESTION,     /*'?'*/                                
    TK_COMMA,        /*','*/
    TK_DOT,          /*'.'*/
    TK_DOTDOT,       /*'..'*/
    TK_DOTDOTDOT,    /*'...'*/
    TK_SEMICOLON,    /*';'*/
    TK_COLON,        /*':'*/

    /*Inheritance.*/
    TK_LTTILDE,      /*'<~': Export/Pass Down*/
    TK_TILDEGT,      /*'~>': Import*/

    /*Math.*/
    TK_PLUS,         /*'+'*/
    TK_MINUS,        /*'-'*/
    TK_STAR,         /*'*'*/
    TK_SLASH,        /*'/'*/
    TK_MOD,          /*'%'*/
    TK_STARSTAR,     /*'**': For exponentiation.*/

    /*Comparison.*/
    TK_AMPAMP,       /*'&&'*/
    TK_PIPEPIPE,     /*'||'*/
    TK_CARETCARET,   /*'^^' Logical XOR*/
    TK_BANGAMP,     /*'!&' Logical NAND*/

    /*Bitwise operations.*/
    TK_AMP,          /*'&': AND*/
    TK_PIPE,         /*'|': OR&*/
    TK_CARET,        /*'^': XOR*/
    TK_TILDE,        /*'~': NOT/Complement*/
    TK_GTGTGT,       /*'>>>': For signed right shift.*/
    TK_GTGT,         /*'>>': For unsigned right shift.*/
    TK_LTLT,         /*'<<': For unsigned left shift.*/

    /*Declaration. (Adding $ at end of declaration makes variable static.)*/
    TK_COLONCOLON,  /*'::': Used to declare a variable/function or infer an operation.*/
    TK_COLONEQ,     /*':='*/

    /*Likely will remove these ~~vvv~~*/
    TK_USDEQ,        /*'$=': Used to make a new static typless variable.*/
    TK_COLONCEQ,     /*':c=': Used to declare a new 8-bit, signed int.*/
    TK_USDCEQ,       /*'$c=': Used to declare a new static 8-bit, signed int.*/
    TK_COLONUCEQ,    /*':uc=': Used to declare a new 8-bit, unsigned int.*/
    TK_USDUCEQ,      /*'$uc=': Used to declare a new static 8-bit, unsigned int.*/
    TK_COLONIEQ,     /*':i=': Used to declare a new 16-bit, signed int.*/
    TK_USDIEQ,       /*'$i=': Used to declare a new static 16-bit, signed int.*/
    TK_COLONUIEQ,    /*':ui=': Used to declare a new 16-bit, unsigned int.*/
    TK_USDUIEQ,      /*'$ui=': Used to declare a new static 16-bit, unsigned int.*/
    TK_COLONLEQ,     /*':l=': Used to declare a new 32-bit, signed int.*/
    TK_USDLEQ,       /*'$l=': Used to declare a new static 32-bit, signed int.*/
    TK_COLONULEQ,    /*':ul=': Used to declare a new 32-bit, unsigned int.*/
    TK_USDULEQ,      /*'$ul=': Used to declare a new static 32-bit, unsigned int.*/
    TK_COLONLLEQ,    /*':ll=': Used to declare a new 64-bit, signed int.*/
    TK_USDLLEQ,      /*'$ll=': Used to declare a new static 64-bit, signed int.*/
    TK_COLONULLEQ,   /*':ull=': Used to declare a new 64-bit, unsigned int.*/
    TK_USDULLEQ,     /*'$ull=': Used to declare a new static 64-bit, unsigned int.*/
    TK_COLONFEQ,     /*':f=': Used to declare a new 32-bit, unsigned float.*/
    TK_USDFEQ,       /*'$f=': Used to declare a new static 32-bit, unsigned float.*/
    TK_COLONDEQ,     /*':d=': Used to declare a new 64-bit, unsigned float.*/
    TK_USDDEQ,       /*'$d=': Used to declare a new static 64-bit, unsigned float.*/
    TK_COLONLDEQ,    /*':ld=': Used to declare a new 80-128 bit, unsigned float.*/
    TK_USDLDEQ,      /*'$ld=': Used to declare a new static 80-128 bit, unsigned float.*/
    TK_COLONSEQ,     /*':s=': Used to declare a new string.*/
    TK_USDSEQ,       /*'$s=': Used to declare a new static string.*/
    /*Likely will remove these ~~^^^~~*/

    /*Assignment.*/
    TK_PLUSEQ,       /*'+='*/
    TK_MINUSEQ,      /*'-='*/
    TK_STAREQ,       /*'*='*/
    TK_SLASHEQ,      /*'/='*/
    TK_MODEQ,        /*'%='*/
    TK_AMPEQ,        /*'&=' AND Equals*/
    TK_PIPEEQ,       /*'|=' OR Equals*/
    TK_CARETEQ,      /*'^=' XOR Equals*/
    TK_TILDEEQ,      /*'~=' Complement Equals*/
    TK_EQ,           /*'='*/
    
    /*Type Conversion.*/
    TK_EQI8,        /*'=i8'*/
    TK_EQU8,        /*'=u8'*/
    TK_EQI16,       /*'=i16'*/
    TK_EQU16,       /*'=u16'*/
    TK_EQI32,       /*'=i32'*/
    TK_EQU32,       /*'=u32'*/
    TK_EQI64,       /*'=i64'*/
    TK_EQU64,       /*'=u64'*/
    TK_EQF32,       /*'=f32'*/
    TK_EQF64,       /*'=f64'*/
    TK_EQF128,      /*'=f128'*/
    TK_EQS,         /*'=s'*/

    /*Checking equality.*/
    TK_LT,          /*'<'*/
    TK_GT,          /*'<'*/
    TK_LTEQ,        /*'<='*/
    TK_GTEQ,        /*'>='*/
    TK_EQEQ,        /*'=='*/
    TK_BANGEQ,      /*'!='*/

    /*Keywords.     (Alphabetical order)*/
    TK_BREAK,   /*'break': break out of loop*/
    TK_CASE,     /*'case': for switch statements*/
    TK_CLASS,    /*'class': MIGHT TOKENIZE*/
    TK_CONTINUE, /*'continue': go to top of loop*/
    TK_DO,      /*'do': used in do and do-while loops*/
    TK_EACH,    /*'each': used in for each loops*/
    TK_ELSE,     /*'else'*/
    TK_ELSIF,    /*'elsif'*/
    TK_ENUM,    /*'enum'*/
    TK_FALSE,    /*'false'*/
    TK_DEF,       /*'fn':TEMP??*/
    TK_FOR,      /*'for'*/
    TK_IF,       /*'if'*/
    TK_IN,       /*'in'*/
    TK_LET,      /*'let':TEMP??*/
    TK_NIL,      /*'nil' (NULL)*/
    TK_PUTS,     /*'puts': print function*/
    TK_STRUCT,  /*'struct':*/
    TK_SUPER,    /*'super'*/
    TK_RETURN,   /*'return': Will try to remove via expression orientation*/
    TK_THIS,     /*'this'*/
    TK_TRUE,     /*'true'*/
    TK_WHEN,     /*'when': for individual switch statements*/
    TK_WHILE,    /*'while'*/
    

    /*Literals.*/
    TK_FIELD,
    TK_NAME,
    TK_NUMBER,
    TK_IDENTIFIER,
    TK_INTERPOLATION,
    TK_LINE,
    TK_STATIC_FIELD,
    TK_STRING,

    /*Others.*/
    TK_ERROR,
    TK_EOF,
    TK_NEWLINE,  /*'\n': terminates an expression*/
    TK_ENDEXPRESSION             
} TokenType;

typedef struct {
    TokenType type;
    const int8_t* start;
    int16_t length;
    int16_t line;
} Token;

typedef struct {
    const int8_t* start;
    const int8_t* current;
    int16_t line;
} Scanner;

Scanner scanner;

void initScanner(const int8_t* source);

static bool isAlpha(int8_t c);
static bool isDigit(int8_t c);

static bool isAtEnd();

/*static char advance();*/

static int8_t checkChar();
static int8_t checkNextChar();
static int8_t nextChar();
static bool compareChar(int8_t c);

static Token makeToken(TokenType type){
    Token token;
    token.type = type;
    token.start = scanner.start;
    token.length = (int16_t)(scanner.current - scanner.start);
    token.line = scanner.line;
    return token;
}
static Token makeTwoCharToken(int8_t c, TokenType one, TokenType two);

static Token errorToken(const int8_t* message);
Token scanToken();

#endif

