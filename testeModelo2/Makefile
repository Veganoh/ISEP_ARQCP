# MAKEFILE EXCERCISE  #

ex: pontuacao.o aprovacoes.o main.o
	gcc pontuacao.o aprovacoes.o main.o -o ex

pontuacao.o: pontuacao.s
	gcc -g -Wall -c  pontuacao.s -o  pontuacao.o
	
aprovacoes.o: aprovacoes.s
	gcc -g -Wall -c aprovacoes.s -o aprovacoes.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex
	
run: ex
	./ex
