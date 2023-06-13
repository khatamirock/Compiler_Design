main:
	bison -d cal.y 
	flex lex.l 
	gcc parser.tab.c lex.yy.c
	a <input.txt> output.txt
	

