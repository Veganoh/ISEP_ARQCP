# Makefile for exercise 11


ex11: test_flags.o main.o
	gcc test_flags.o main.o -o ex11
     
test_flags.o: test_flags.s
	gcc -g -Wall -c test_flags.s -o test_flags.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex11
	 
run: ex11
	./ex11
