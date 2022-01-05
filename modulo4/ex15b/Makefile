# MAKEFILE EXCERCISE 15b #

ex15b: activate_bits.o main.o
	gcc activate_bits.o main.o -o ex15b
	
activate_bits.o: activate_bits.s
	gcc -g -Wall -c activate_bits.s -o activate_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex15b
	
run: ex15b
	./ex15b
