

%option noyywrap

%{

%}

delim[ \t]
ws {delim}+
degit [0-9]
number {degit}+
char [a-z]
letter {char}*
lett ['for']




%%

{ws} {printf("space detected!\n");}
{'for'} {printf(" letter is here \n");}
{number} {printf("%s num \n",yytext);}
[+] {printf("\n%s ADD\n",yytext);}   
[-] {printf("\n%s MINUX\n",yytext);}
{letter} {printf("%s letter \n",yytext);}




%%


int main(){
    yylex();
    return 0;
}




