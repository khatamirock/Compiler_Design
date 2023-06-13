%{


#include<stdio.h>
#include <stdlib.h>
#include <string.h>
void yyerror();
extern int lineno;
extern int yylex();

%}

%union
{
    char str_val[00];
    int int_val;
}

%token INT DOUBLE FLOAT CHAR 
%token FOR_LOOP AS TYPE COUNTER FROM TO INTEGER LET
%token LPAREN RPAREN LBRACE RBRACE COLON SEMI ASSIGN

%token<str_val> ID
%token ICONST
%token FCONST
%token CCONST

%start STATEMENTS

%%

STATEMENTS: STATEMENTS STATEMENT |
          ;

STATEMENT: DECLARATION | LOOP
          ;

DECLARATION: LET COUNTER AS INTEGER SEMI
          ;

LOOP: FOR_LOOP COUNT SEMI ;


COUNT: LPAREN COUNTER FROM ICONST TO ICONST RPAREN SEMI;




%%

void yyerror ()
{
	printf("Syntax error at line %d\n", lineno);
	exit(1);
}

int main (int argc, char *argv[])
{
	yyparse();
	printf("Parsing finished!\n");	
	return 0;
}
