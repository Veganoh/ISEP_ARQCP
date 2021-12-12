# Makefile for exercise 15


ex15: sum_first_byte.o main.o
	gcc sum_first_byte.o main.o -o ex15
     
sum_first_byte.o: sum_first_byte.s
	gcc -g -Wall -c sum_first_byte.s -o sum_first_byte.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex15
	 
run: ex15
	./ex15
