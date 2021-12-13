# Makefile for exercise 01

ex01: zero_count.o main.o
	gcc zero_count.o main.o -o ex01
     
zero_count.o: zero_count.s
	gcc -g -Wall -c zero_count.s -o zero_count.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex01
	 
run: ex01
	./ex01
