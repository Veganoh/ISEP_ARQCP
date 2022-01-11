#include <stdio.h>
#include "nota.h"
#include "extremos.h"

int main(){
	
	
	unsigned int notasArray[] = {0x00E00C01,0x00A00B02,0x00800903,0x01100F04,0x01000E05};	
	int n = sizeof(notasArray)/sizeof(notasArray[0]);
	unsigned short notaMinima;
	unsigned short notaMaxima;
	
	unsigned int* notas = notasArray;
	unsigned short* min= &notaMinima;
	unsigned short* max = &notaMaxima;
	
	int result;
	result = extremos(notas,n,min,max);
	
	printf("Nota mínima: %u \nNota máxima: %u \nNúmero de alunos com positiva %d \n",*min,*max,result);
	
	return 0;
}
