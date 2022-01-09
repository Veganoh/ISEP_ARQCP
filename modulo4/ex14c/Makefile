# MAKEFILE EXCERCISE 14c #

ex14c:  activate_bit.o activate_2bits.o main.o
	gcc  activate_bit.o activate_2bits.o main.o -o ex14c

activate_bit.o:  activate_bit.s
	gcc -g -Wall -c  activate_bit.s -o  activate_bit.o
	
activate_2bits.o: activate_2bits.s
	gcc -g -Wall -c activate_2bits.s -o activate_2bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex14c
	
run: ex14c
	./ex14c
