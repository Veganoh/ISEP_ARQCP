#include <stdio.h>
#include "pontuacao.h"
#include "aprovacoes.h"


int main(){
	
	

	unsigned int exames[] = {0xACB4F501,0x0BB89CF2,0x00C8FF03,0xBAF0E0DD,0x78F0FF05};
	int n = 5;
	unsigned int aprovacoes[n];
	int i;
	
	
	int result;
	
	result = aprovados(exames,n,aprovacoes);
	
	printf("Result: %d\n",result);
	
	
	for(i = 0; i < result; i++){
		
		printf("%x ",aprovacoes[i]);
	}
	
	printf("\n");

	return 0;
}
