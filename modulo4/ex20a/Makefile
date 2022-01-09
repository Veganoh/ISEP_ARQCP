# MAKEFILE EXERCISE 20a #

ex20a: sum_multiples_x.o main.o
	gcc sum_multiples_x.o main.o -o ex20a
	
sum_multiples_x.o:  sum_multiples_x.c
	gcc -g -Wall -c  sum_multiples_x.c -o  sum_multiples_x.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex20a
	
run: ex20a
	./ex20a
