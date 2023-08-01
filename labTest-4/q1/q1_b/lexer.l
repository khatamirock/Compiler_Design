%option noyywrap

%{
	#define INT_TYPE 1
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include "parser.tab.h"
	
	int lineno = 1; // initialize to 1
	void yyerror();
%}

alpha     [a-zA-Z]
digit     [0-9]
alnum     {alpha}|{digit}
print     [ -~]

ID        {alpha}{alnum}*
ICONST    [0-9]{digit}*
%%

"//".*        { } 

"integer"       {yylval.int_val=INT_TYPE; return INTEGER; }

"if"	   {return IF;}
"Then"  	{return THEN;}
"else"	   {return ELSE;}
"while"    { return WHILE; }
"For" 		{return FOR;}
"To"		{return TO;}
"let" 		{return LET;}
"has"		{return HAS;}
"type" 		{return TYPE;}
"k" 			{return K;}
"kori"		{return KORI;}
"function"  {return FUNCTION;}
"end" { return END;  }
"plus"       { return ADDOP; }
"minus"       { return SUBOP; }
"*"       { return MULOP; }
"/"       { return DIVOP; }
"=="      { return EQUOP; }

">"       { return GT; }
"<"       { return LT; }

"("       { return LPAREN; }
")"       { return RPAREN; }
"{"       { return LBRACE; }
"}"       { return RBRACE; }
";"       { return SEMI; }
"assign"       { return ASSIGN; }
"print"       { return PRINT; }
"scan"       { return SCAN; }
"Sub" 		{return SUB;}
"main"     {return MAIN;}
"Dim" 		{return DIM;}
"As"       {return AS;}
"begin"		{return BEG;}
"Single"  {yylval.int_val=INT_TYPE;return SINGLE;}

{ID}        {strcpy(yylval.str_val, yytext); return ID;}
{ICONST}    {yylval.int_val=atoi(yytext); return ICONST;}

"\n"        { lineno += 1; }
[ \t\r\f]+  

.       { yyerror("Unrecognized character"); }
