# MAKEFILE EXCERCISE 14b #

ex14b:  activate_bit.o main.o
	gcc  activate_bit.o main.o -o ex14b

activate_bit.o:  activate_bit.s
	gcc -g -Wall -c  activate_bit.s -o  activate_bit.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex14b
	
run: ex14b
	./ex14b
