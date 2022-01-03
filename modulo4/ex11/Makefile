# MAKEFILE EXCERCISE 11 #

ex11: proc.o call_proc.o main.o
	gcc proc.o call_proc.o main.o -o ex11
	
proc.o: proc.s
	gcc -g -Wall -c proc.s -o proc.o

call_proc.o: call_proc.s
	gcc -g -Wall -c call_proc.s -o call_proc.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex11
	
run: ex11
	./ex11
