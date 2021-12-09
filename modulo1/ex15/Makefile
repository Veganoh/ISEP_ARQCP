# Makefile for exercise 15

ex15: populate.o check.o inc_nsets.o main.o
		gcc -g populate.o check.o inc_nsets.o main.o -o ex15
		
populate.o: populate.c
		gcc -g -Wall -c populate.c -o populate.o
		
check.o: check.c
		gcc -g -Wall -c check.c -o check.o
		
inc_nsets.o: inc_nsets.c
		gcc -g -Wall -c inc_nsets.c -o inc_nsets.o				
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean:
		rm -f *.o ex15
		
run: ex15
		./ex15
