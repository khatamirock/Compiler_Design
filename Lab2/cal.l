%option noyywrap
%{
  #include "cal.tab.h"  
%}
delim [ \t]
ws {delim}+
digit [0-9]
number {digit}+
lett [letter]
%%
{ws} {}
{number} {yylval = atoi(yytext); return (NUM);}
"+" {return (ADD);}
"-" {return (SUB);}
"*" {return (MULT);}
"/" {return (DIV);}
{lett} {printf("lett");}

%%
