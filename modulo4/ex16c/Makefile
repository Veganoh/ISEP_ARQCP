# MAKEFILE EXERCISE 16c #

ex16c: join_bits.o mixed_sum.o main.o
	gcc join_bits.o mixed_sum.s main.o -o ex16c
	
join_bits.o:  join_bits.s
	gcc -g -Wall -c  join_bits.s -o  join_bits.o
	
mixed_sum.o:  mixed_sum.s
	gcc -g -Wall -c  mixed_sum.s -o  mixed_sum.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex16c
	
run: ex16c
	./ex16c
