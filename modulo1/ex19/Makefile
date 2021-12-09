# Makefile for exercise 19

ex19: find_word.o main.o
	gcc find_word.o main.o -o ex19
     
find_word.o: find_word.c
	gcc -g -Wall -c find_word.c -o find_word.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex19
	 
run: ex19
	./ex19
