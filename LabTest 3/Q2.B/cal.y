%{
#include <stdio.h>
void yyerror(char *s);
int yylex();
%}

%token LOVES PIZZA BURGER PASTA

%start statements

%%

statements: statements statement
          | statement
          ;

statement: LOVES PIZZA  { printf("He loves pizza.\n"); }
         | LOVES BURGER { printf("He loves burger.\n"); }
         | LOVES PASTA  { printf("He loves pasta.\n"); }
         ;

%%

int main(){
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}

void yyerror(char *s){
    fprintf(stderr, "Error: %s\n", s);
}
