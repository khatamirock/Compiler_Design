%option noyywrap

%{



	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include "Q1b.tab.h"
	
	int lineno = 1; // initialize to 1
	void yyerror();
%}

alpha     [a-zA-Z]
digit     [0-9]
alnum     {alpha}|{digit}
print     [ -~]

ID        {alpha}{alnum}*
ICONST    [0-9]{digit}*
FCONST    {digit}*"."{digit}+
CCONST    (\'{print}\')
STRING    \"{print}*\"
%%

"//".*     { } 

"INTEGER"  { return INT; }

"FOR_LOOP"      { return FOR_LOOP; }
"COUNTER" { return COUNTER; }
"let"   { return LET; }
"from" { return FROM; }
"to" { return TO; }
"as" { return AS; }
"("        { return LPAREN; }
")"        { return RPAREN; }


{ID}        {return ID;}
{ICONST}    {return ICONST;}
{FCONST}    {return FCONST;}
{CCONST}    {return CCONST;}


"\n"        { lineno += 1; }
[ \t\r\f]+  

.           { yyerror("Unrecognized character"); }

%%