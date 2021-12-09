# Makefile for exercise 3


ex03: sum_v2.o main.o
	gcc sum_v2.o main.o -o ex03
     
sum_v2.o: sum_v2.s
	gcc -g -Wall -c sum_v2.s -o sum_v2.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex03
	 
run: ex03
	./ex03
