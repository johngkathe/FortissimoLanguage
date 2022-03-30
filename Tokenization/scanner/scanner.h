#ifndef scanner_h
#define scanner_h

#include <stdint.h>

typedef enum {
    //Parentheses+
    TOKEN_LEFT_PAREN,   //'('                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_RIGHT_PAREN,  //')'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_LEFT_BRACE,   //'{'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_RIGHT_BRACE,  //'}'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_LEFT_BRACK,   //'['                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_RIGHT_BRACK,  //']'                       @@@@@@@@@@@@@@@@@@@@

    //Punctuation.
    TOKEN_BANG,         //'!'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_BANGBANG,     //'!!': For returning truthiness of statement @@
    TOKEN_QUESTION,     //'?':                      @@@@@@@@@@@@@@@@@@@@                                 
    TOKEN_COMMA,        //','                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_DOT,          //'.'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_DOTDOT,       //'..'                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_DOTDOTDOT,    //'...'                     @@@@@@@@@@@@@@@@@@@@
    TOKEN_SEMICOLON,    //';'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_COLON,        //':'                       @@@@@@@@@@@@@@@@@@@@

    //Inheritance.
    TOKEN_LTTILDE,      //'<~': Export/Pass Down
    TOKEN_TILDEGT,      //'~>': Import              @@@@@@@@@@@@@@@@@@@@

    //Math.
    TOKEN_PLUS,         //'+'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_MINUS,        //'-'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_STAR,         //'*'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_SLASH,        //'/'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_MOD,          //'%'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_STARSTAR,     //'**': For exponentiation. @@@@@@@@@@@@@@@@@@@@

    //Comparison.
    TOKEN_AMPAMP,       //'&&'                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_PIPEPIPE,     //'||'
    TOKEN_CARETCARET,   //'^^' Logical XOR          @@@@@@@@@@@@@@@@@@@@

    //Bitwise operations.
    TOKEN_AMP,          //'&': AND                  @@@@@@@@@@@@@@@@@@@@
    TOKEN_PIPE,         //'|': OR
    TOKEN_CARET,        //'^': XOR                  @@@@@@@@@@@@@@@@@@@@
    TOKEN_TILDE,        //'~': NOT/Complement       @@@@@@@@@@@@@@@@@@@@
    TOKEN_GTGTGT,       //'>>>': For signed right shift.
    TOKEN_GTGT,         //'>>': For unsigned right shift.
    TOKEN_LTLT,         //'<<': For unsigned left shift.

    //Variable Declaration. (Adding $ at end of declaration makes variable static.)
    TOKEN_COLONCOLON,   //'::': Used to declare a new typless variable. @@@@@@@@@@@@@@@@@@@@@@@
    TOKEN_USDEQ,        //'$=': Used to make a new static typless variable. @@@@@@@@@@@@@@@@@@@
    TOKEN_COLONCEQ,     //':c=': Used to declare a new 8-bit, signed int. @@@@@@@@@@@@@@@@@@@@@
    TOKEN_USDCEQ,       //'$c=': Used to declare a new static 8-bit, signed int. @@@@@@@@@@@@@@
    TOKEN_COLONUCEQ,    //':uc=': Used to declare a new 8-bit, unsigned int. @@@@@@@@@@@@@@@@@@
    TOKEN_USDUCEQ,      //'$uc=': Used to declare a new static 8-bit, unsigned int. @@@@@@@@@@@
    TOKEN_COLONIEQ,     //':i=': Used to declare a new 16-bit, signed int. @@@@@@@@@@@@@@@@@@@@
    TOKEN_USDIEQ,       //'$i=': Used to declare a new static 16-bit, signed int. @@@@@@@@@@@@@
    TOKEN_COLONUIEQ,    //':ui=': Used to declare a new 16-bit, unsigned int. @@@@@@@@@@@@@@@@@
    TOKEN_USDUIEQ,      //'$ui=': Used to declare a new static 16-bit, unsigned int. @@@@@@@@@@
    TOKEN_COLONLEQ,     //':l=': Used to declare a new 32-bit, signed int. @@@@@@@@@@@@@@@@@@@@
    TOKEN_USDLEQ,       //'$l=': Used to declare a new static 32-bit, signed int. @@@@@@@@@@@@@
    TOKEN_COLONULEQ,    //':ul=': Used to declare a new 32-bit, unsigned int. @@@@@@@@@@@@@@@@@
    TOKEN_USDULEQ,      //'$ul=': Used to declare a new static 32-bit, unsigned int. @@@@@@@@@@
    TOKEN_COLONLLEQ,    //':ll=': Used to declare a new 64-bit, signed int. @@@@@@@@@@@@@@@@@@@
    TOKEN_USDLLEQ,      //'$ll=': Used to declare a new static 64-bit, signed int. @@@@@@@@@@@@
    TOKEN_COLONULLEQ,   //':ull=': Used to declare a new 64-bit, unsigned int. @@@@@@@@@@@@@@@@
    TOKEN_USDULLEQ,     //'$ull=': Used to declare a new static 64-bit, unsigned int. @@@@@@@@@
    TOKEN_COLONFEQ,     //':f=': Used to declare a new 32-bit, unsigned float. @@@@@@@@@@@@@@@@
    TOKEN_USDFEQ,       //'$f=': Used to declare a new static 32-bit, unsigned float. @@@@@@@@@
    TOKEN_COLONDEQ,     //':d=': Used to declare a new 64-bit, unsigned float. @@@@@@@@@@@@@@@@
    TOKEN_USDDEQ,       //'$d=': Used to declare a new static 64-bit, unsigned float. @@@@@@@@@
    TOKEN_COLONLDEQ,    //':ld=': Used to declare a new 80-128 bit, unsigned float. @@@@@@@@@@@
    TOKEN_USDLDEQ,      //'$ld=': Used to declare a new static 80-128 bit, unsigned float. @@@@
    TOKEN_COLONSEQ,     //':s=': Used to declare a new string. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    TOKEN_USDSEQ,       //'$s=': Used to declare a new static string. @@@@@@@@@@@@@@@@@@@@@@@@@

    //Assignment.
    TOKEN_PLUSEQ,       //'+='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_MINUSEQ,      //'-='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_STAREQ,       //'*='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_SLASHEQ,      //'/='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_MODEQ,        //'%='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_AMPEQ,        //'&=' AND Equals           @@@@@@@@@@@@@@@@@@@@
    TOKEN_PIPEEQ,       //'|=' OR Equals
    TOKEN_CARETEQ,      //'^=' XOR Equals           @@@@@@@@@@@@@@@@@@@@
    TOKEN_TILDEEQ,      //'~=' Complement Equals    @@@@@@@@@@@@@@@@@@@@
    TOKEN_EQ,           //'='                       @@@@@@@@@@@@@@@@@@@@
    
    //Type Conversion.
    TOKEN_CEQ,          //'c='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_UCEQ,         //'uc='                     @@@@@@@@@@@@@@@@@@@@
    TOKEN_IEQ,          //'i='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_UIEQ,         //'ui='                     @@@@@@@@@@@@@@@@@@@@
    TOKEN_LEQ,          //'l='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_ULEQ,         //'ul='                     @@@@@@@@@@@@@@@@@@@@
    TOKEN_LLEQ,         //'ll='                     @@@@@@@@@@@@@@@@@@@@
    TOKEN_ULLEQ,        //'ull='                    @@@@@@@@@@@@@@@@@@@@
    TOKEN_FEQ,          //'f='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_DEQ,          //'d='                      @@@@@@@@@@@@@@@@@@@@
    TOKEN_LDEQ,         //'ld='                     @@@@@@@@@@@@@@@@@@@@
    TOKEN_SEQ,          //'s='                      @@@@@@@@@@@@@@@@@@@@

    //Checking equality.
    TOKEN_LT,       //'<'
    TOKEN_GT,       //'<'
    TOKEN_LTEQ,     //'<='
    TOKEN_GTEQ,     //'>='
    TOKEN_EQEQ,     //'=='                          @@@@@@@@@@@@@@@@@@@@
    TOKEN_BANGEQ,   //'!='                          @@@@@@@@@@@@@@@@@@@@

    //Keywords.     (Alphabetical order)
    TOKEN_CASE,     //'case': for switch statements @@@@@@@@@@@@@@@@@@@@
    TOKEN_CLASS,    //'class': MIGHT TOKENIZE       @@@@@@@@@@@@@@@@@@@@
    TOKEN_ELSE,     //'else'                        @@@@@@@@@@@@@@@@@@@@
    TOKEN_ELSIF,    //'elsif'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_FALSE,    //'false'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_DEF,       //'fn':TEMP??                   @@@@@@@@@@@@@@@@@@@@
    TOKEN_FOR,      //'for'                         @@@@@@@@@@@@@@@@@@@@
    TOKEN_IF,       //'if'                          @@@@@@@@@@@@@@@@@@@@
    TOKEN_IN,       //'in'                          @@@@@@@@@@@@@@@@@@@@
    TOKEN_LET,      //'let':TEMP??                  @@@@@@@@@@@@@@@@@@@@
    TOKEN_NIL,      //'nil' (NULL)                  @@@@@@@@@@@@@@@@@@@@
    TOKEN_PUTS,     //'puts': print function        @@@@@@@@@@@@@@@@@@@@
    TOKEN_SUPER,    //'super'                       @@@@@@@@@@@@@@@@@@@@
    TOKEN_RETURN,   //'return': Will try to remove via expression orientation
    TOKEN_THIS,     //'this'                        @@@@@@@@@@@@@@@@@@@@
    TOKEN_TRUE,     //'true'                        @@@@@@@@@@@@@@@@@@@@
    TOKEN_WHEN,     //'when': for individual switch statements @@@@@@@@@
    TOKEN_WHILE,    //'while'                       @@@@@@@@@@@@@@@@@@@@
    

    //Literals.
    TOKEN_FIELD,                                  //@@@@@@@@@@@@@@@@@@@@
    TOKEN_NAME,
    TOKEN_NUMBER,
    TOKEN_IDENTIFIER,                             //@@@@@@@@@@@@@@@@@@@@
    TOKEN_INTERPOLATION,
    TOKEN_LINE,
    TOKEN_STATIC_FIELD,
    TOKEN_STRING,                                 //@@@@@@@@@@@@@@@@@@@@

    //Others.
    TOKEN_ERROR,                                  //@@@@@@@@@@@@@@@@@@@@
    TOKEN_EOF,                                    //@@@@@@@@@@@@@@@@@@@@
    TOKEN_NEWLINE,  //'\n': terminates an expression@@@@@@@@@@@@@@@@@@@@
    TOKEN_ENDEXPRESSION             
} TokenType;

typedef struct {
    TokenType type;
    const int8_t* start;
    int16_t length;
    int16_t line;
} Token;

void initScanner(const int8_t* source);

static bool isAlpha(int8_t c);
static bool isDigit(int8_t c);

static bool isAtEnd();

//static char advance();

static int8_t checkChar();
static int8_t checkNextChar();
static int8_t nextChar();
static bool compareChar(int8_t c);

static Token makeToken(TokenType type);
static Token makeTwoCharToken(int8_t c, TokenType one, TokenType two);

static Token errorToken(const int8_t* message);
Token scanToken();

#endif