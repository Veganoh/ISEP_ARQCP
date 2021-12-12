# Makefile for exercise 13


ex13: keep_positives.o main.o
	gcc keep_positives.o main.o -o ex13
     
keep_positives.o: keep_positives.s
	gcc -g -Wall -c keep_positives.s -o keep_positives.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex13
	 
run: ex13
	./ex13
