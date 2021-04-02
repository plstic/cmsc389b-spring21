all: bbcalc

%.c: %.y
%.c: %.l

bbcalc: bbc.l bbc.y bbc.h bbc.c
	bison -d bbc.y
	flex -o bbc.lex.c bbc.l
	gcc -o $@ bbc.tab.c bbc.lex.c bbc.c

test: bbcalc
	python3 run_tests.py
clean: 
	rm *.lex.c lex.yy.c *.tab.* bbcalc
