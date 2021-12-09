# Makefile for exercise 15


ex15: compute.o main.o
	gcc compute.o main.o -o ex15
     
compute.o: compute.s
	gcc -g -Wall -c compute.s -o compute.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex15
	 
run: ex15
	./ex15
