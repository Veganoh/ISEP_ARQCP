# MAKEFILE EXCERCISE 17b #

ex17b:  greater_date.o main.o
	gcc  greater_date.o main.o -o ex17b

greater_date.o:  greater_date.s
	gcc -g -Wall -c  greater_date.s -o  greater_date.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex17b
	
run: ex17b
	./ex17b
