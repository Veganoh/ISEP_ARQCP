# Makefile for exercise 11

ex11: palindrome.o main.o
	gcc palindrome.o main.o -o ex11
     
palindrome.o: palindrome.c
	gcc -g -Wall -c palindrome.c -o palindrome.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex11
	 
run: ex11
	./ex11
