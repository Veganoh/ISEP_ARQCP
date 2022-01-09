# MAKEFILE EXERCISE 20b #

ex20b: sum_multiples_x.o main.o
	gcc sum_multiples_x.o main.o -o ex20b
	
sum_multiples_x.o:  sum_multiples_x.s
	gcc -g -Wall -c  sum_multiples_x.s -o  sum_multiples_x.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex20b
	
run: ex20b
	./ex20b
