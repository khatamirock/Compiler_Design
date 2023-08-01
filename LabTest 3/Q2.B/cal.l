

%option noyywrap

%{

%}

delim[ \t]
ws {delim}+
degit [0-9]
number {degit}+
char [a-z]
letter {char}*


%%

{ws} {}

{number} {printf("%s - num \n",yytext);}
{letter} {printf("%s - letter \n",yytext);}
["] {printf("Dot \n");}

%%


int main(){
    yylex();
    return 0;
}




