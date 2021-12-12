# Makefile for exercise 9


ex09: vec_search.o main.o
	gcc vec_search.o main.o -o ex09
     
vec_search.o: vec_search.s
	gcc -g -Wall -c vec_search.s -o vec_search.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex09
	 
run: ex09
	./ex09
