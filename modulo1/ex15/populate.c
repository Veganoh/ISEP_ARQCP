#include <stdlib.h>
#include <time.h>


  // Usa a função rand para generar um número de 0 ao limite;
  
  
void populate( int *vec , int num, int limit){
	
	srand(time(NULL)); // É necessário fazer seed para que os mesmos números randomizados não apareçam outra vez.
	
	for (int i = 0; i < num; i++){
		
		*(vec + i)  = (rand() %(limit + 1));
		
	}
	
	
}

