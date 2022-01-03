# MAKEFILE EXCERCISE 05 #

ex05: inc_and_square.o main.o
	gcc inc_and_square.o main.o -o ex05
	
inc_and_square.o: inc_and_square.s
	gcc -g -Wall -c inc_and_square.s -o inc_and_square.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex05
	
run: ex05
	./ex05
