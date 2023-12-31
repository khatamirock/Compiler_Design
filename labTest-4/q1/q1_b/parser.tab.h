
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     PRINT = 258,
     SCAN = 259,
     SUB = 260,
     MAIN = 261,
     AS = 262,
     LET = 263,
     HAS = 264,
     TYPE = 265,
     K = 266,
     KORI = 267,
     BEG = 268,
     ADDOP = 269,
     SUBOP = 270,
     MULOP = 271,
     DIVOP = 272,
     EQUOP = 273,
     LT = 274,
     GT = 275,
     THEN = 276,
     END = 277,
     LPAREN = 278,
     RPAREN = 279,
     LBRACE = 280,
     RBRACE = 281,
     SEMI = 282,
     ASSIGN = 283,
     ELSE = 284,
     TO = 285,
     FUNCTION = 286,
     ID = 287,
     ICONST = 288,
     INT = 289,
     INTEGER = 290,
     SINGLE = 291,
     DIM = 292,
     IF = 293,
     WHILE = 294,
     FOR = 295
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 13 "parser.y"

    char str_val[100];
    int int_val;



/* Line 1676 of yacc.c  */
#line 99 "parser.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


