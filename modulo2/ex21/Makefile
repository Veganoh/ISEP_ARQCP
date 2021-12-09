# Makefile for exercise 21

ex21: new_salary.o main.o
	gcc new_salary.o main.o -o ex21
     
new_salary.o: new_salary.s
	gcc -g -Wall -c new_salary.s -o new_salary.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex21
	 
run: ex21
	./ex21
