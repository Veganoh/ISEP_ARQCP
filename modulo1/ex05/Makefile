# Makefile for exercise 5

ex05: upper2.o main.o
	gcc upper2.o main.o -o ex05
     
upper2.o: upper2.c
	gcc -g -Wall -c upper2.c -o upper2.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex05
	 
run: ex05
	./ex05
