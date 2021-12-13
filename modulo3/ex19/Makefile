# Makefile for exercise 19


ex19: frequencies.o main.o
	gcc frequencies.o main.o -o ex19
     
frequencies.o: frequencies.s
	gcc -g -Wall -c frequencies.s -o frequencies.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex19
	 
run: ex19
	./ex19
