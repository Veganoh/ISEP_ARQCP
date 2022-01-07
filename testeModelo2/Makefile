# MAKEFILE EXCERCISE  #

ex: pontuacao.o main.o
	gcc pontuacao.o main.o -o ex

pontuacao.o: pontuacao.s
	gcc -g -Wall -c  pontuacao.s -o  pontuacao.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex
	
run: ex
	./ex
