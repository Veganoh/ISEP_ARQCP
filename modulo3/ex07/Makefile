# Makefile for exercise 7


ex07: decrypt.o main.o
	gcc decrypt.o main.o -o ex07
     
decrypt.o: decrypt.s
	gcc -g -Wall -c decrypt.s -o decrypt.o
		 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex07
	 
run: ex07
	./ex07
