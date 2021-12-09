# Makefile for exercise 5


ex05: swapBytes.o main.o
	gcc swapBytes.o main.o -o ex05
     
swapBytes.o: swapBytes.s
	gcc -g -Wall -c swapBytes.s -o swapBytes.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex05
	 
run: ex05
	./ex05
