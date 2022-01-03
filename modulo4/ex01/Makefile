# MAKEFILE EXCERCISE 01 #

ex01: cube.o main.o
	gcc cube.o main.o -o ex01
	
cube.o: cube.s
	gcc -g -Wall -c cube.s -o cube.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex01
	
run: ex01
	./ex01
