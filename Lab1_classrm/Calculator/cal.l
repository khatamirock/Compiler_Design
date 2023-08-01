%option noyywrap
%{
%}
delim [ \t]
ws {delim}+
digit [0-9]
number {digit}+
letter [A-Za-z]
id {letter}+
%%

{ws} {printf("SPACE\n");}
{number} {printf("number printed\n");}
[-+] { printf("Found +/- operator\n"); }
 
%%

int main(){
    yylex();
    return 0;
}