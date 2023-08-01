%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
    #include "symtab.c"
    #include "codeGen.c"
	void yyerror();
	extern int lineno;
	extern int yylex();
%}

%union
{
    char str_val[100];
    int int_val;
}

%token PRINT SCAN SUB MAIN AS LET HAS TYPE K KORI BEG
%token ADDOP SUBOP MULOP DIVOP EQUOP LT GT THEN END
%token LPAREN RPAREN LBRACE RBRACE SEMI ASSIGN ELSE TO FUNCTION
%token<str_val> ID 
%token<int_val> ICONST
%token<int_val> INT INTEGER SINGLE DIM
%token<int_val> IF
%token<int_val> WHILE FOR

%left LT GT /*LT GT has lowest precedence*/
%left ADDOP 
%left MULOP /*MULOP has lowest precedence*/

%type<int_val> exp assignment_print_scan 

%start program

%%
program: {gen_code(START, -1);} code {gen_code(HALT, -1);}
code: statements;

statements: statements statement | ;

statement:  declaration
            |BEG
            |MAIN LPAREN RPAREN FUNCTION
            |assignment_print_scan
            |if_statement 
            |while_statement
            |for_loop
            |END
            ;

declaration: DIM ID AS INTEGER
            {
                
                
            }
            | LET ID HAS TYPE INTEGER
            {
                
            }
            
            ;

assignment_print_scan: ID ASSIGN exp
                {

                }
                |ID ASSIGN ICONST
                | PRINT LPAREN ID RPAREN SEMI
                {
                  
                }
                |ID K PRINT KORI
                {
                    
                }
                | SCAN LPAREN ID RPAREN SEMI
                {
                    int address = idcheck($3);

                    if(address != -1)
                    {
                        gen_code(SCAN_INT_VALUE, address);
                    }
                    else
                        yyerror();
                }
                ;

exp: ICONST
    {
        gen_code(LD_INT, $1);
    }
    | ID 
      {
          

      }
    | exp ADDOP exp { }
    |exp SUBOP exp
    | exp MULOP exp
    | exp GT exp { gen_code(GT_OP, gen_label()); }
    | exp LT exp { gen_code(LT_OP, gen_label()); }
    ;


if_statement:
	IF {$1 = gen_label();} exp THEN
    { gen_code(IF_START, $1); } 
    iftail { gen_code(ELSE_END, $1); }
    ;
iftail:statements


tail: LBRACE statements RBRACE 
    ;

while_statement: WHILE {  $1 = gen_label();
 gen_code(WHILE_LABEL, $1); } 
 LPAREN exp RPAREN { gen_code(WHILE_START, $1); } 
 tail { gen_code(WHILE_END, $1); }
    ;


for_loop: FOR{$1 = gen_label() ;
gen_code(FOR_LABEL,$1);}

ID ASSIGN ICONST TO ICONST { gen_code(FOR_START,$1);} 
    ID ASSIGN exp
 {gen_code(FOR_END,$1)}
 ;


 






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
