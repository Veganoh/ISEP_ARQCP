# Makefile for exercise 9


ex09: sum_and_subtract.o main.o
	gcc sum_and_subtract.o main.o -o ex09
     
sum_and_subtract.o: sum_and_subtract.s
	gcc -g -Wall -c sum_and_subtract.s -o sum_and_subtract.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex09
	 
run: ex09
	./ex09
