# Makefile for exercise 03

ex03: str_copy_porto2.o main.o
	gcc str_copy_porto2.o main.o -o ex03
     
str_copy_porto2.o: str_copy_porto2.s
	gcc -g -Wall -c str_copy_porto2.s -o str_copy_porto2.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex03
	 
run: ex03
	./ex03
