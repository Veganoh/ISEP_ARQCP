# MAKEFILE EXERCISE 16a #

ex16a: join_bits.o main.o
	gcc join_bits.o main.o -o ex16a
	
join_bits.o:  join_bits.c
	gcc -g -Wall -c  join_bits.c -o  join_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex16a
	
run: ex16a
	./ex16a
