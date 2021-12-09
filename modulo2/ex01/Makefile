# Makefile for exercise 1


ex01: asm.o main.o
	gcc asm.o main.o -o ex01
     
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex01
	 
run: ex01
	./ex01
