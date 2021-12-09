# Makefile for exercise 13


ex13: getArea.o main.o
	gcc getArea.o main.o -o ex13
     
getArea.o: getArea.s
	gcc -g -Wall -c getArea.s -o getArea.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex13
	 
run: ex13
	./ex13
