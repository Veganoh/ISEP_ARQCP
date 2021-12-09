#include <stddef.h>
#include <string.h>

 char* find_word(char* word, char* initial_addr){
	 
	 
	 // Verifica se o primeiro elemento de qualquer uma das strings é nula, se for dará return a NULL
	 if ((*word == '\0') || (*initial_addr == '\0')) return NULL;
	 
	 
	 // A função strstr retorna a primeira ocorrência de uma substring em outra string na forma de um pointer do tipo character que aponta para a primeira posição
	 return strstr(initial_addr,word);
	 	
}
