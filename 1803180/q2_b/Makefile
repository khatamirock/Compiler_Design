main:
	bison -d q1b.y
	flex q1b.l
	gcc q1b.tab.c lex.yy.c
	a < input.txt > output.txt 
