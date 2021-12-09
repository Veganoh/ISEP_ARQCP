# Makefile for exercise 7

ex07: array_sort1.o main.o
	gcc array_sort1.o main.o -o ex07
     
array_sort1.o: array_sort1.c
	gcc -g -Wall -c array_sort1.c -o array_sort1.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex07
	 
run: ex07
	./ex07
