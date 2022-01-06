# MAKEFILE EXCERCISE 19b #

ex19b:  add_byte.o main.o
	gcc  add_byte.o main.o -o ex19b

greater_date.o:  add_byte.s
	gcc -g -Wall -c  add_byte.s -o  add_byte.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex19b
	
run: ex19b
	./ex19b
