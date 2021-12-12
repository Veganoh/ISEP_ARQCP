# Makefile for exercise 5


ex05: vec_avg.o vec_sum.o main.o
	gcc vec_avg.o vec_sum.o main.o -o ex05
     
vec_avg.o: vec_avg.s
	gcc -g -Wall -c vec_avg.s -o vec_avg.o
	
vec_sum.o: vec_sum.s
	gcc -g -Wall -c vec_sum.s -o vec_sum.o
	 
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex05
	 
run: ex05
	./ex05
