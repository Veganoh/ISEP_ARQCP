# Makefile for exercise 19


ex19: needed_time.o main.o
	gcc needed_time.o main.o -o ex19
     
needed_time.o: needed_time.s
	gcc -g -Wall -c needed_time.s -o needed_time.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex19
	 
run: ex19
	./ex19
