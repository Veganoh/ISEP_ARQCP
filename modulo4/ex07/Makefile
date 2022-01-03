# MAKEFILE EXCERCISE 07 #

ex07: count_even.o main.o
	gcc count_even.o main.o -o ex07
	
count_even.o: count_even.s
	gcc -g -Wall -c count_even.s -o count_even.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex07
	
run: ex07
	./ex07
