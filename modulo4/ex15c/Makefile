# MAKEFILE EXCERCISE 15c #

ex15c: activate_bits.o activate_invert_bits.o main.o
	gcc activate_bits.o activate_invert_bits.o main.o -o ex15c
	
activate_bits.o: activate_bits.s
	gcc -g -Wall -c activate_bits.s -o activate_bits.o
	
activate_invert_bits.o: activate_invert_bits.s
	gcc -g -Wall -c activate_invert_bits.s -o activate_invert_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex15c
	
run: ex15c
	./ex15c
