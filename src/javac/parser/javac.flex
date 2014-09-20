package javac.parser;

%%

%unicode
%line
%column
%cup
%implements Symbols

%{
    private StringBuffer string = new StringBuffer();
    private int commentCount = 0;

    private void err(String message) {
        System.err.println(String.format("Scanning error in line %d, column %d: %s", yyline + 1, yycolumn + 1, message));
    }

    private java_cup.runtime.Symbol tok(int kind) {
        return new java_cup.runtime.Symbol(kind, yyline, yycolumn);
    }

    private java_cup.runtime.Symbol tok(int kind, Object value) {
        return new java_cup.runtime.Symbol(kind, yyline, yycolumn, value);
    }
%}

%eofval{
    {
        return tok(EOF, null);
    }
%eofval}

LineTerm = \n|\r|\r\n
Identifier = [_a-zA-Z][_a-zA-Z0-9]*
DecInteger = 0 | [1-9][0-9]*
Whitespace = {LineTerm}|[ \t\f]
InputCharacter = [^\r\n]


%state YYSTRING
%state YYCHAR
%state YYCOMMENT
%state YYLINECOMMENT

%%

<YYINITIAL>
{

    /* comment  */

    "//"    { yybegin(YYLINECOMMENT); }
    "/*"    { yybegin(YYCOMMENT); commentCount++; }

    /* keywords */

    "if"    { return tok(IF); }
    "else"  { return tok(ELSE);}
    "while" { return tok(WHILE);}
    "native" { return tok(NATIVE);}
    "record" { return tok(RECORD);}
    "new"   { return tok(NEW);}
    "int"    { return tok(INT);}
    "string" { return tok(STRING);}
    "char"  { return tok(CHAR);}
    "for"   { return tok(FOR);}
    "return" { return tok(RETURN);}
    "break" { return tok(BREAK);}
    "continue" { return tok(CONTINUE);}

    /* separators */

    "("      { return tok(LPAREN); }
    ")"      { return tok(RPAREN); }
    "{"      { return tok(LBRACE); }
    "}"      { return tok(RBRACE); }
    "["      { return tok(LBRACKET); }
    "]"      { return tok(RBRACKET); }
    ";"      { return tok(SEMICOLON); }
    ","      { return tok(COMMA); }

    /* symble */

    "."      { return tok(DOT); }
    "["{Whitespace}*"]"    { return tok(LRBRACKET); }


    /* operators */

    "<="    { return tok(LESS_EQ); }
    "=="    { return tok(EQ); }
    "="     { return tok(ASSIGN); }
    ">"     { return tok(GREATER); }
    "<"     { return tok(LESS); }
    "!"     { return tok(NOT); }
    ">="    { return tok(GREATER_EQ); }
    "!="    { return tok(NEQ); }
    "&&"    { return tok(AND); }
    "||"    { return tok(OR); }
    "+"     { return tok(PLUS); }
    "-"     { return tok(MINUS); }
    "*"     { return tok(MULTIPLY); }
    "/"     { return tok(DIVIDE); }
    "%"     { return tok(MODULO); }

    /* null literal */

    "null"  { return tok(NULL); }

    /* string literal */
    \"                             { yybegin(YYSTRING); string.setLength(0); }

    /* character literal */
    \'                             { yybegin(YYCHAR); }

    {Identifier}    { return tok(ID, yytext()); }
    {DecInteger}    { return tok(INTEGER, Integer.valueOf(yytext())); }
    {Whitespace}    {}
    [^]    { err("Illegal character " + yytext()); }
}

<YYLINECOMMENT>
{
    {LineTerm}    { yybegin(YYINITIAL); }
    [^]           {}
}

<YYCOMMENT>
{
    "/*" { commentCount++; }
    "*/" { if (--commentCount == 0) yybegin(YYINITIAL); }
    [^]            { }

}

<YYSTRING>
{
    \"                             { yybegin(YYINITIAL); return tok(STRING_LITERAL, string.toString()); }

    /* escape sequences */
    "\\t"                          { string.append( '\t' ); }
    "\\n"                          { string.append( '\n' ); }
    "\\r"                          { string.append( '\r' ); }
    "\\\""                         { string.append( '\"' ); }
    "\\\\"                         { string.append( '\\' ); }
    \\[:digit:]{3}				{ char val = (char) Integer.parseInt(yytext().substring(1)); string.append( val ); }

    {InputCharacter}             { string.append( yytext() ); }
    \\.                          { err("Illegal escape sequence \""+yytext()+"\""); }
    {LineTerm}                   { err("Unterminated string at end of line "); }
    [^]                          { err("Illegal character " + yytext()); }
}

<YYCHAR>
{
    {InputCharacter}\'             { yybegin(YYINITIAL); return tok(CHARACTER, new Character(yytext().charAt(0))); }

    "\\b"\'                        { yybegin(YYINITIAL); return tok(CHARACTER, new Character('\b'));}
    "\\t"\'                        { yybegin(YYINITIAL); return tok(CHARACTER, new Character('\t'));}
    "\\n"\'                        { yybegin(YYINITIAL); return tok(CHARACTER, new Character('\n'));}
    "\\f"\'                        { yybegin(YYINITIAL); return tok(CHARACTER, new Character('\f'));}
    "\\r"\'                        { yybegin(YYINITIAL); return tok(CHARACTER, new Character('\r'));}
    "\\'"\'                        { yybegin(YYINITIAL); return tok(CHARACTER, new Character('\''));}
    "\\\\"\'                       { yybegin(YYINITIAL); return tok(CHARACTER, new Character('\\'));}
    \\[:digit:]{3}\'			   { yybegin(YYINITIAL); return tok(CHARACTER, new Character((char)Integer.parseInt(yytext().substring(1,4)))); }

	\\.                            { err("Illegal escape sequence \""+yytext()+"\""); }
    {LineTerm}                     { err("Unterminated character literal at end of line "); }
}

<<EOF>>                          { return tok(EOF); }
