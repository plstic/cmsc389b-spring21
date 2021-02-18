CC = swipl
PFLAGS = --goal=main --stand_alone=true

all: wumpus hello

wumpus: wumpus.pl public_wumpus_tests.pl 
	$(CC) $(PFLAGS) -o wumpus -c public_wumpus_tests.pl wumpus.pl

hello: hello.pl public_hello_tests.pl
	$(CC) $(PFLAGS) -o hello -c public_hello_tests.pl hello.pl 

tests: wumpus hello
	python run_tests.py

clean:
	rm wumpus hello 
