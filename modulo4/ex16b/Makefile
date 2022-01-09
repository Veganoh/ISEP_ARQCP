# MAKEFILE EXERCISE 16b #

ex16b: join_bits.o main.o
	gcc join_bits.o main.o -o ex16b
	
join_bits.o:  join_bits.s
	gcc -g -Wall -c  join_bits.s -o  join_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex16b
	
run: ex16b
	./ex16b
