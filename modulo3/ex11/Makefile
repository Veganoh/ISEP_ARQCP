# Makefile for exercise 11


ex11: vec_greater20.o main.o
	gcc vec_greater20.o main.o -o ex11
     
vec_greater20.o: vec_greater20.s
	gcc -g -Wall -c vec_greater20.s -o vec_greater20.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex11
	 
run: ex11
	./ex11
