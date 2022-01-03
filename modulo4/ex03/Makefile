# MAKEFILE EXCERCISE 03 #

ex03: greatest.o main.o
	gcc greatest.o main.o -o ex03
	
greatest.o: greatest.s
	gcc -g -Wall -c greatest.s -o greatest.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex03
	
run: ex03
	./ex03
