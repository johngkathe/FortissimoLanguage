#include "../../common/common.h"
#include "scanner.h"

#include <stdio.h>
#include <string.h>
#include <stdint.h>

typedef struct {
    const int8_t* start;
    const int8_t* current;
    int16_t line;
} Scanner;

Scanner scanner;
Token token;

void initScanner(const int8_t* source){
    scanner.start = source;
    scanner.current = source;
    scanner.line = 1;
}

static bool isAlpha(int8_t c){
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_';
}

static bool isDigit(int8_t c){
    return c >= '0' && c <= '9';
}

static bool isAtEnd(){
    return *scanner.current == '\0';
}

// static char advance(){
//     scanner.current++;
//     return scanner.current[-1];
// }

static int8_t checkChar(){
    return *scanner.current;
}

static int8_t checkNextChar(){
    if(isAtEnd()) return '\0';
    return scanner.current[1];
}

static int8_t nextChar(){
    int8_t c = checkChar();
    scanner.current++;
    if(c == '\n') scanner.line++;
    return c;
}

static bool compareChar(int8_t c){
    if(checkChar() != c) return false;
    nextChar();
    return true;
}

static Token makeToken(TokenType type){
    Token token;
    token.type = type;
    token.start = scanner.start;
    token.length = (int)(scanner.current - scanner.start);
    token.line = scanner.line;
    return token;
}

//Used to make a two char token.  If the comparison is true, 
//the two char token is made, else a one char token is made.
static Token makeTwoCharToken(int8_t c, TokenType one, TokenType two){
    return makeToken(compareChar(c) ? one : two);
}

static Token errorToken(const int8_t* message){
    Token token;
    token.type = TOKEN_ERROR;
    token.start = message;
    token.length = (int16_t)strlen(message);
    token.line = scanner.line;
    return token;
}

static void invalidToken(uint8_t c){
    uint8_t errMsg[26];
    strcpy(errMsg, "Unexpected character: 'C'");
    errMsg[strlen(errMsg) - 2] = c;

    printf("char: %d\n", c);
    printf("%s\n", errMsg);
}

static void skipLineComment(){
    while(checkChar() != '\n' && !isAtEnd()){ 
        nextChar();
    }
}

static void skipBlockComment(){ //Assumes block comment has commenced.
    nextChar();
    nextChar();
    int nesting = 1;
    while(nesting > 0){
        //Error handling
        if(isAtEnd()){
            errorToken("Unterminated block comment."); return;
        }
        //Start block comment.
        if(checkChar() == '#' && checkNextChar() == '|'){
            nextChar();
            nextChar();
            nesting++;
            continue;
        }
        //End block comment.
        if(checkChar() == '|' && checkNextChar() == '#'){
            nextChar();
            nextChar();
            nesting--;
            continue;
        }
        //Regular comment character.
        nextChar();
    }
}

static void skipWhitespace(){
    for(;;){
        int8_t c = checkChar();
        switch(c){
            case ' ':
            case '\r':
            case '\t':
                nextChar();
                break;
            // case '\n':
            //     return makeToken(TOKEN_NEWLINE);
            //     scanner.line++;
            //     nextChar();
            //     break;
            case '#':
                if(checkNextChar() =='|') skipBlockComment();
                else skipLineComment();
                break;
            default:
                return;
        }
    }
}

//start: location in token, length: remaining # of chars in token
//rest: remaining chars in token, type: type of token
static TokenType checkKeyword(int16_t start, int16_t length, const int8_t* rest, TokenType type){
    if(scanner.current - scanner.start == start + length && memcmp(scanner.start + start, rest, length) == 0){
        return type;
    }
    return TOKEN_IDENTIFIER;
}

static TokenType identifierType(){  //V8 style!
    switch(scanner.start[0]){
        case 'c': 
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'a': return checkKeyword(2, 2, "se", TOKEN_CASE);
                    case 'l': return checkKeyword(2, 3, "ass", TOKEN_CLASS);    //Might change
                    case '=': return checkKeyword(2, 0, "", TOKEN_CEQ);
                }
            }
            break;
        case 'd':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'e': return checkKeyword(2, 2, "ef", TOKEN_DEF);
                    case '=': return checkKeyword(2, 0, "", TOKEN_DEQ);
                }
            }
        case 'e':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[3]){
                    case 'e': return checkKeyword(4, 0, "", TOKEN_ELSE);
                    case 'i': return checkKeyword(4, 1, "f", TOKEN_ELSIF);
                }
            }
            break; 
        case 'f':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'a': return checkKeyword(2, 3, "lse", TOKEN_FALSE);
                    case 'o': return checkKeyword(2, 1, "r", TOKEN_FOR);
                    case '=': return checkKeyword(2, 0, "", TOKEN_FEQ);
                }
            }
            break;
        case 'i': 
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'f': return checkKeyword(2, 0, "", TOKEN_IF);
                    case 'n': return checkKeyword(2, 1, "n", TOKEN_IN);
                    case '=': return checkKeyword(2, 0, "", TOKEN_IEQ);
                }
            }
            break; 
        case 'l':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'd': return checkKeyword(2, 1, "=", TOKEN_LDEQ);
                    case 'e': return checkKeyword(2, 1, "t", TOKEN_LET);
                    case 'l': return checkKeyword(2, 1, "=", TOKEN_LLEQ);
                    case '=': return checkKeyword(2, 0, "", TOKEN_LEQ);
                }
            }
            break;
        case 'n': return checkKeyword(1, 2, "il", TOKEN_NIL);
        case 'p': return checkKeyword(1, 3, "uts", TOKEN_PUTS);
        case 'r': return checkKeyword(1, 5, "eturn", TOKEN_RETURN); //Might change
        case 's':
            if (scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'u': return checkKeyword(2, 4, "uper", TOKEN_SUPER);
                    case '=': return checkKeyword(2, 0, "", TOKEN_SEQ);
                }
            }
            break;
        case 't':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'h': return checkKeyword(2, 2, "is", TOKEN_THIS);
                    case 'r': return checkKeyword(2, 2, "ue", TOKEN_TRUE);
                }
            }
            break;
        case 'u':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                            case 'c': return checkKeyword(2, 1, "=", TOKEN_UCEQ);
                            case 'i': return checkKeyword(2, 1, "=", TOKEN_UIEQ);
                            case 'l':
                                switch(scanner.start[2]){
                                    case 'l': return checkKeyword(3, 1, "=", TOKEN_ULLEQ);
                                    case '=': return checkKeyword(3, 0, "", TOKEN_ULEQ);
                                }
                        }
            }
        case 'w':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[2]){
                    case 'e': return checkKeyword(3, 1, "n", TOKEN_WHEN);
                    case 'i': return checkKeyword(3, 2, "le", TOKEN_WHILE);
                }
            }
            break;
    }
    return TOKEN_IDENTIFIER;
}

static Token identifier(){
    while(isAlpha(checkChar()) || isDigit(checkChar())) nextChar();
    return makeToken(identifierType());
}

static Token number(){
    while(isDigit(checkChar())) nextChar();

    //Determine if number is Double
    if(checkChar() == '.' && isDigit(checkNextChar())){
        nextChar();
        while(isDigit(checkChar())) nextChar();
    }

    return makeToken(TOKEN_NUMBER);
}

static Token string(){
    while((checkChar() != '"' && checkChar() != '\'' && checkChar() != '`') && !isAtEnd()){
        if(checkChar() == '\n') scanner.line++;
        nextChar();
    }

    if(isAtEnd()) return errorToken("Unterminated string.");

    nextChar();
    return makeToken(TOKEN_STRING);
}

Token scanToken(){
    skipWhitespace();
    scanner.start = scanner.current;

    if(isAtEnd()) return makeToken(TOKEN_EOF);

    uint8_t c = nextChar();
    if(isAlpha(c)) return identifier();
    if(isDigit(c)) return number();

    switch(c){
        //Parentheses+
        case '(': return makeToken(TOKEN_LEFT_PAREN);
        case ')': 
            if(compareChar('>')) return makeToken(TOKEN_RPARENGT);
            return makeTwoCharToken('{', TOKEN_RPARENLBRACE, TOKEN_RIGHT_PAREN);
        case '{': return makeToken(TOKEN_LEFT_BRACE);
        case '}':
            if(compareChar('>')) return makeToken(TOKEN_RBRACEGT);
            return makeTwoCharToken('(', TOKEN_RBRACELPAREN, TOKEN_RIGHT_BRACE);
        case '[': return makeToken(TOKEN_LEFT_BRACK);
        case ']': return makeToken(TOKEN_RIGHT_BRACK);

        //Punctuation.
        case '!':
            if(compareChar('!')) return makeToken(TOKEN_BANGBANG);
            return makeTwoCharToken('=', TOKEN_BANGEQ, TOKEN_BANG);
        case '?': return makeToken(TOKEN_QUESTION);
        case ',': return makeToken(TOKEN_COMMA);
        case '.':
            if(compareChar('.')){
                return makeTwoCharToken('.', TOKEN_DOTDOTDOT, TOKEN_DOTDOT);
            } else return makeToken(TOKEN_DOT);
        case ';': return makeToken(TOKEN_SEMICOLON);

        //Checking equality.
        case '=': return makeTwoCharToken('=', TOKEN_EQEQ, TOKEN_EQ);
        case '<':                                   //Might need to modify for functions
            if(compareChar('<')) return makeToken(TOKEN_LTLT);
            if(compareChar('{')) return makeToken(TOKEN_LTLBRACE);
            if(compareChar('(')) return makeToken(TOKEN_LTLPAREN);
            return makeTwoCharToken('=', TOKEN_LTEQ, TOKEN_LT);
        case '>':                                   //Might need to modify for functions
            if(compareChar('>')) return makeTwoCharToken('>', TOKEN_GTGTGT, TOKEN_GTGT);
            return makeTwoCharToken('=', TOKEN_GTEQ, TOKEN_GT);
        //Mathematic/Assignment operations.
        case '+': return makeTwoCharToken('=', TOKEN_PLUSEQ, TOKEN_PLUS);
        case '-': return makeTwoCharToken('=', TOKEN_MINUSEQ, TOKEN_MINUS);
        case '*':
            if(compareChar('*')) return makeToken(TOKEN_STARSTAR);
            return makeTwoCharToken('=', TOKEN_STAREQ, TOKEN_STAR);
        case '/': return makeTwoCharToken('=', TOKEN_SLASHEQ, TOKEN_SLASH);
        case '%': return makeTwoCharToken('%', TOKEN_MODEQ, TOKEN_MOD);
        
        //Logical operations.
        case '&':
            if(compareChar('&')) return makeToken(TOKEN_AMPAMP);
            return makeTwoCharToken('=', TOKEN_AMPEQ, TOKEN_AMP);
        case '^':
            if(compareChar('^')) return makeToken(TOKEN_CARETCARET);
            return makeTwoCharToken('=', TOKEN_CARETEQ, TOKEN_CARET);
        case '~':
            if(compareChar('>')) return makeToken(TOKEN_TILDEGT);
            return makeTwoCharToken('=', TOKEN_TILDEEQ, TOKEN_TILDE);

        //Comments.  SEE WHITESPACE
        // case '#':
        //     //INTERPOLATION TOKEN HERE
        //     if(compareChar('|')){ skipBlockComment; break;
        //     } else { skipLineComment; break; }
            
        //Strings.
        case '"':
        case '`':
        case '\'':
            return string();

        //Assignment Operations
        case ':':   //Check for variable declaration tokens
            if(compareChar('c')){nextChar(); return makeToken(TOKEN_COLONCEQ);}
            if(compareChar('d')){nextChar(); return makeToken(TOKEN_COLONDEQ);}
            if(compareChar('f')){nextChar(); return makeToken(TOKEN_COLONFEQ);}
            if(compareChar('i')){nextChar(); return makeToken(TOKEN_COLONIEQ);}
            if(compareChar('l')){
                if(compareChar('d')){nextChar(); return makeToken(TOKEN_COLONLDEQ);}
                if(compareChar('l')){nextChar(); return makeToken(TOKEN_COLONLLEQ);}
                if(compareChar('=')) return makeToken(TOKEN_COLONLEQ);
            } 
            if(compareChar('s')){nextChar(); return makeToken(TOKEN_COLONSEQ);}
            if(compareChar('u')){
                if(compareChar('c')){nextChar(); return makeToken(TOKEN_COLONUCEQ);}
                if(compareChar('i')){nextChar(); return makeToken(TOKEN_COLONUIEQ);}
                if(compareChar('l')){
                    if(compareChar('l')){nextChar(); return makeToken(TOKEN_COLONULLEQ);}
                    if(compareChar('=')) return makeToken(TOKEN_COLONULEQ);
                }            
            }
            if(compareChar(':')) return makeToken(TOKEN_COLONCOLON); 
            if(compareChar('\0')) return makeToken(TOKEN_COLON);  //Return normal colon

        case '$':   //Check for constant declaration tokens
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'c': return makeToken(TOKEN_USDCEQ);
                    case 'd': return makeToken(TOKEN_USDDEQ);
                    case 'f': return makeToken(TOKEN_USDFEQ);
                    case 'i': return makeToken(TOKEN_USDIEQ);
                    case 'l': switch(scanner.start[2]){
                        case 'd': return makeToken(TOKEN_USDLDEQ);
                        case 'l': return makeToken(TOKEN_USDLLEQ);
                        case '=': return makeToken(TOKEN_USDLEQ);
                    }
                    case 's': return makeToken(TOKEN_USDSEQ);
                    case 'u': switch(scanner.start[2]){
                        case 'c': return makeToken(TOKEN_USDUCEQ);
                        case 'i': return makeToken(TOKEN_USDUIEQ);
                        case 'l': switch(scanner.start[3]){
                            case 'l': switch(scanner.start[4]) case '=': return makeToken(TOKEN_USDULLEQ);
                            case '=': return makeToken(TOKEN_USDULEQ);
                        }
                    }
                    case '=': return makeToken(TOKEN_USDEQ);
                    //default: return makeToken(TOKEN_USD); //Might implement TOKEN_USD
                }
                    //default: return checkKeyword(1, 0, "", TOKEN_USD); 
            }
            break;

            //Newline.
            case '\n':
                while(checkChar() == '\n'){
                    nextChar();
                    scanner.line++;
                } 
                return makeToken(TOKEN_NEWLINE);            
    }
    invalidToken(c);
    return errorToken("Unexpected character.");
}