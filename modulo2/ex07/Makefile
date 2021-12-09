# Makefile for exercise 7


ex07: crossSumBytes.o main.o
	gcc crossSumBytes.o main.o -o ex07
     
crossSumBytes.o: crossSumBytes.s
	gcc -g -Wall -c crossSumBytes.s -o crossSumBytes.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex07
	 
run: ex07
	./ex07
