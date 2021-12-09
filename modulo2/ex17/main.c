#include <stdio.h>
#include "calculator.h"

int n1=0,n2=0,op=0,res;

int main(void) {
	
	
	printf("Que operação deseja fazer? \n Soma(0) \n Subtração(1) \n Multiplicação(2) \n Divisão(3) \n Mod(4) \n Quadrado(5) \n Cubo(6)\n");
	scanf("%d",&op);
	
	
	printf("Valor de n1:");
	scanf("%d",&n1);
	
	if(op<5){
		printf("Valor de n2:");
		scanf("%d",&n2);
	}

	
	res = calculator();
	printf("O resultado dessa operação é: %d\n", res);
	
	return 0;
}
