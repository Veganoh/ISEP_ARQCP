# MAKEFILE EXCERCISE 09 #

ex09: calculate.o main.o
	gcc calculate.o main.o -o ex09
	
calculate.o: calculate.s
	gcc -g -Wall -c calculate.s -o calculate.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex09
	
run: ex09
	./ex09
