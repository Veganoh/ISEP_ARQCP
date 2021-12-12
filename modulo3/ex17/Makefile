# Makefile for exercise 17


ex17: array_sort.o main.o
	gcc array_sort.o main.o -o ex17
     
array_sort.o: array_sort.s
	gcc -g -Wall -c array_sort.s -o array_sort.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex17
	 
run: ex17
	./ex17
