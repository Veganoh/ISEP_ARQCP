# MAKEFILE EXCERCISE 13 #

ex13: rotate_left.o rotate_right.o main.o
	gcc rotate_left.o rotate_right.o main.o -o ex13
	
rotate_left.o: rotate_left.c
	gcc -g -Wall -c rotate_left.c -o rotate_left.o

rotate_right.o: rotate_right.c
	gcc -g -Wall -c rotate_right.c -o rotate_right.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex13
	
run: ex13
	./ex13
