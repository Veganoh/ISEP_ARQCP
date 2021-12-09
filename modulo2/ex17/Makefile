# Makefile for exercise 17


ex17: calculator.o main.o
	gcc calculator.o main.o -o ex17
     
calculator.o: calculator.s
	gcc -g -Wall -c calculator.s -o calculator.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex17
	 
run: ex17
	./ex17
