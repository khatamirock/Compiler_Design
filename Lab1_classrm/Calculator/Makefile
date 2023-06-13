main:
	bison -d cal.y
	flex cal.l
	gcc -o newcal cal.tab.c lex.yy.c
	a <input.txt> output.txt


main2:
	flex cal.l
	gcc lex.yy.c -o a.out
	./a.out
	


# MinGW32-make
# MinGW32-make