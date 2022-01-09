# MAKEFILE EXCERCISE 14a #

ex14a:  activate_bit.o main.o
	gcc  activate_bit.o main.o -o ex14a

activate_bit.o:  activate_bit.c
	gcc -g -Wall -c  activate_bit.c -o  activate_bit.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex14a
	
run: ex14a
	./ex14a
