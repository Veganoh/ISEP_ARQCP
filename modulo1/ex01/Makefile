# Makefile to do the ex1 #

ex01: main.o
	gcc main.o -o ex01
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex01
	
run: ex01
	./ex01
