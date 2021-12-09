# Makefile for exercise 17

ex17: swap.o main.o
	gcc swap.o main.o -o ex17
     
swap.o: swap.c
	gcc -g -Wall -c swap.c -o swap.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex17
	 
run: ex17
	./ex17
