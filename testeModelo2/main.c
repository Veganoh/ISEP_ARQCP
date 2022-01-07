#include <stdio.h>
#include "pontuacao.h"


int main(){
	
	
	unsigned int aluno1 = 0xBAF0E0DD;
	
	int result;
	
	result = pontuacao(aluno1);
	
	printf("Result: %d\n",result);

	return 0;
}
