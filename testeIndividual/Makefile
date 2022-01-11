# MAKEFILE - Segundo momento de avaliação #

ex: nota.o extremos.o main.o
	gcc nota.o extremos.o main.o -o ex
	
nota.o: nota.s
	gcc -g -Wall -c nota.s -o nota.o
	
extremos.o: extremos.s
	gcc -g -Wall -c extremos.s -o extremos.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex
	
run: ex
	./ex



