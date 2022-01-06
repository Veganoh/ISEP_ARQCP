# MAKEFILE EXCERCISE 19a #

ex19a:  add_byte.o main.o
	gcc  add_byte.o main.o -o ex19a

greater_date.o:  add_byte.c
	gcc -g -Wall -c  add_byte.c -o  add_byte.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex19a
	
run: ex19a
	./ex19a
