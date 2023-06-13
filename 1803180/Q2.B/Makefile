main: 
	bison -d cal.y
	flex cal.l
	gcc lex.yy.c
	./a <input.txt