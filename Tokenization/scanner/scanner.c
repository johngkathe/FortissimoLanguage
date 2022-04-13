#include "../../common/common.h"
#include "scanner.h"

#include <stdio.h>
#include <string.h>
#include <stdint.h>

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

static Token makeToken(TokenType type);

/*Used to make a two char token.  If the comparison is true, 
the two char token is made, else a one char token is made.*/
static Token makeTwoCharToken(int8_t c, TokenType one, TokenType two){
    return makeToken(compareChar(c) ? one : two);
}

static Token errorToken(const int8_t* message){
    Token token;
    token.type = TK_ERROR;
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

static void skipBlockComment(){ /*Assumes block comment has commenced.*/
    nextChar();
    nextChar();
    int nesting = 1;
    while(nesting > 0){
        /*Error handling*/
        if(isAtEnd()){
            errorToken("Unterminated block comment."); return;
        }
        /*Start block comment.*/
        if(checkChar() == '#' && checkNextChar() == '|'){
            nextChar();
            nextChar();
            nesting++;
            continue;
        }
        /*End block comment.*/
        if(checkChar() == '|' && checkNextChar() == '#'){
            nextChar();
            nextChar();
            nesting--;
            continue;
        }
        /*Regular comment character.*/
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
            case '\n':
                scanner.line++;
                nextChar();
                break;
            case '#':
                if(checkNextChar() =='|') skipBlockComment();
                else skipLineComment();
                break;
            default:
                return;
        }
    }
}

/*start: location in token, length: remaining # of chars in token
  rest: remaining chars in token, type: type of token*/
static TokenType checkKeyword(int16_t start, int16_t length, const int8_t* rest, TokenType type){
    if(scanner.current - scanner.start == start + length && memcmp(scanner.start + start, rest, length) == 0){
        return type;
    }
    return TK_IDENTIFIER;
}

static TokenType identifierType(){  /*V8 style!*/
    switch(scanner.start[0]){
        case 'c': 
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'a': return checkKeyword(2, 2, "se", TK_CASE);
                    case 'l': return checkKeyword(2, 3, "ass", TK_CLASS);    /*Might change*/
                }
            }
            break;
        case 'd':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'e': return checkKeyword(2, 1, "f", TK_DEF);
                    case 'o': return checkKeyword(2, 0, "", TK_DO);
                }
            }
        case 'e':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'a': return checkKeyword(2, 2, "ch", TK_EACH);
                    case 'l': switch(scanner.start[2]) {
                        case 's': switch(scanner.start[3]){
                            case 'e': return checkKeyword(4, 0, "", TK_ELSE);
                            case 'i': return checkKeyword(4, 1, "f", TK_ELSIF);
                        }
                    }
                    case 'n': return checkKeyword(2, 2, "um", TK_ENUM);
                }
            }
            break; 
        case 'f':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'a': return checkKeyword(2, 3, "lse", TK_FALSE);
                    case 'o': return checkKeyword(2, 1, "r", TK_FOR);
                }
            }
            break;
        case 'i': 
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'f': return checkKeyword(2, 0, "", TK_IF);
                    case 'n': return checkKeyword(2, 1, "n", TK_IN);
                }
            }
            break; 
        case 'l':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'e': return checkKeyword(2, 1, "t", TK_LET);
                }
            }
            break;
        case 'n': return checkKeyword(1, 2, "il", TK_NIL);
        case 'p': return checkKeyword(1, 3, "uts", TK_PUTS);
        case 'r': return checkKeyword(1, 5, "eturn", TK_RETURN); /*Might change*/
        case 's':
            if (scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'u': return checkKeyword(2, 3, "per", TK_SUPER);
                    case 't': return checkKeyword(2, 4, "ruct", TK_STRUCT);
                }
            }
            break;
        case 't':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'h': return checkKeyword(2, 2, "is", TK_THIS);
                    case 'r': return checkKeyword(2, 2, "ue", TK_TRUE);
                }
            }
            break;
        case 'w':
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[2]){
                    case 'e': return checkKeyword(3, 1, "n", TK_WHEN);
                    case 'i': return checkKeyword(3, 2, "le", TK_WHILE);
                }
            }
            break;
    }
    return TK_IDENTIFIER;
}

static Token identifier(){
    while(isAlpha(checkChar()) || isDigit(checkChar())) nextChar();
    return makeToken(identifierType());
}

/*Will need to modify to make sure only floats can have decimals*/
static Token number(){
    while(isDigit(checkChar())) nextChar();

    /*Determine if number is Double*/
    if(checkChar() == '.' && isDigit(checkNextChar())){
        nextChar();
        while(isDigit(checkChar())) nextChar();
    }

    return makeToken(TK_NUMBER);
}

static Token string(){
    while((checkChar() != '"' && checkChar() != '\'' && checkChar() != '`') && !isAtEnd()){
        if(checkChar() == '\n') scanner.line++;
        nextChar();
    }

    if(isAtEnd()) return errorToken("Unterminated string.");

    nextChar();
    return makeToken(TK_STRING);
}

Token scanToken(){
    skipWhitespace();
    scanner.start = scanner.current;

    if(isAtEnd()) return makeToken(TK_EOF);

    uint8_t c = nextChar();
    if(isAlpha(c)) return identifier();
    if(isDigit(c)) return number();

    switch(c){
        /*Parentheses+*/
        case '(': return makeToken(TK_LEFT_PAREN);
        case ')': 
            if(compareChar('>')) return makeToken(TK_RPARENGT);
            return makeTwoCharToken('{', TK_RPARENLBRACE, TK_RIGHT_PAREN);
        case '{': return makeToken(TK_LEFT_BRACE);
        case '}':
            if(compareChar('>')) return makeToken(TK_RBRACEGT);
            return makeTwoCharToken('(', TK_RBRACELPAREN, TK_RIGHT_BRACE);
        case '[': return makeToken(TK_LEFT_BRACK);
        case ']': return makeToken(TK_RIGHT_BRACK);

        /*Punctuation.*/
        case '!':
            if(compareChar('!')) return makeToken(TK_BANGBANG);
            if(compareChar('&')) return makeToken(TK_BANGAMP);
            return makeTwoCharToken('=', TK_BANGEQ, TK_BANG);
        case '?': return makeToken(TK_QUESTION);
        case ',': return makeToken(TK_COMMA);
        case '.':
            if(compareChar('.')){
                return makeTwoCharToken('.', TK_DOTDOTDOT, TK_DOTDOT);
            } else return makeToken(TK_DOT);
        case ';': return makeToken(TK_SEMICOLON);

        /*Checking equality.*/
        case '=': return makeTwoCharToken('=', TK_EQEQ, TK_EQ);
        case '<':                                   /*Might need to modify for functions*/
            if(compareChar('<')) return makeToken(TK_LTLT);
            if(compareChar('{')) return makeToken(TK_LTLBRACE);
            if(compareChar('(')) return makeToken(TK_LTLPAREN);
            return makeTwoCharToken('=', TK_LTEQ, TK_LT);
        case '>':                                   /*Might need to modify for functions*/
            if(compareChar('>')) return makeTwoCharToken('>', TK_GTGTGT, TK_GTGT);
            return makeTwoCharToken('=', TK_GTEQ, TK_GT);
            
        /*Mathematic/Assignment operations.*/
        case '+': return makeTwoCharToken('=', TK_PLUSEQ, TK_PLUS);
        case '-': return makeTwoCharToken('=', TK_MINUSEQ, TK_MINUS);
        case '*':
            if(compareChar('*')) return makeToken(TK_STARSTAR);
            return makeTwoCharToken('=', TK_STAREQ, TK_STAR);
        case '/': return makeTwoCharToken('=', TK_SLASHEQ, TK_SLASH);
        case '%': return makeTwoCharToken('%', TK_MODEQ, TK_MOD);
        
        /*Logical operations.*/
        case '&':
            if(compareChar('&')) return makeToken(TK_AMPAMP);
            return makeTwoCharToken('=', TK_AMPEQ, TK_AMP);
        case '|':
            if(compareChar('|')) return makeToken(TK_PIPEPIPE);
            return makeTwoCharToken('=', TK_PIPEEQ, TK_PIPE);
        case '^':
            if(compareChar('^')) return makeToken(TK_CARETCARET);
            return makeTwoCharToken('=', TK_CARETEQ, TK_CARET);
        case '~':
            if(compareChar('>')) return makeToken(TK_TILDEGT);
            return makeTwoCharToken('=', TK_TILDEEQ, TK_TILDE);

        /*Comments.  SEE WHITESPACE
            
        /*Strings.*/
        case '"':
        case '`':
        case '\'':
            return string();

        /*Assignment Operations*/
        case ':':   /*Check for variable declaration tokens*/
            if(compareChar('c')){nextChar(); return makeToken(TK_COLONCEQ);}
            if(compareChar('d')){nextChar(); return makeToken(TK_COLONDEQ);}
            if(compareChar('f')){nextChar(); return makeToken(TK_COLONFEQ);}
            if(compareChar('i')){nextChar(); return makeToken(TK_COLONIEQ);}
            if(compareChar('l')){
                if(compareChar('d')){nextChar(); return makeToken(TK_COLONLDEQ);}
                if(compareChar('l')){nextChar(); return makeToken(TK_COLONLLEQ);}
                if(compareChar('=')) return makeToken(TK_COLONLEQ);
            } 
            if(compareChar('s')){nextChar(); return makeToken(TK_COLONSEQ);}
            if(compareChar('u')){
                if(compareChar('c')){nextChar(); return makeToken(TK_COLONUCEQ);}
                if(compareChar('i')){nextChar(); return makeToken(TK_COLONUIEQ);}
                if(compareChar('l')){
                    if(compareChar('l')){nextChar(); return makeToken(TK_COLONULLEQ);}
                    if(compareChar('=')) return makeToken(TK_COLONULEQ);
                }            
            }
            if(compareChar(':')) return makeToken(TK_COLONCOLON); 
            if(compareChar('\0')) return makeToken(TK_COLON);  /*Return normal colon*/

        case '$':   /*Check for constant declaration tokens*/
            if(scanner.current - scanner.start > 1){
                switch(scanner.start[1]){
                    case 'c': return makeToken(TK_USDCEQ);
                    case 'd': return makeToken(TK_USDDEQ);
                    case 'f': return makeToken(TK_USDFEQ);
                    case 'i': return makeToken(TK_USDIEQ);
                    case 'l': switch(scanner.start[2]){
                        case 'd': return makeToken(TK_USDLDEQ);
                        case 'l': return makeToken(TK_USDLLEQ);
                        case '=': return makeToken(TK_USDLEQ);
                    }
                    case 's': return makeToken(TK_USDSEQ);
                    case 'u': switch(scanner.start[2]){
                        case 'c': return makeToken(TK_USDUCEQ);
                        case 'i': return makeToken(TK_USDUIEQ);
                        case 'l': switch(scanner.start[3]){
                            case 'l': switch(scanner.start[4]) case '=': return makeToken(TK_USDULLEQ);
                            case '=': return makeToken(TK_USDULEQ);
                        }
                    }
                    case '=': return makeToken(TK_USDEQ);
                    /*default: return makeToken(TK_USD); /*Might implement TK_USD*/
                }
                    /*default: return checkKeyword(1, 0, "", TK_USD);*/ 
            }
            break;           
    }
    invalidToken(c);
    return errorToken("Unexpected character.");
}