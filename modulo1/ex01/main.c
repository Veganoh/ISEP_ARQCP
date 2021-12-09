#include <stdio.h>

int main(void)
{
	int x = 5;
	int* xPtr = &x;
	float y = *xPtr + 3;
	int vec[] = {10, 11, 12, 13};
	

	printf(" \n x = %u and y = %f \n", x,y);
	printf(" \n The adress of x is %p and the adress if xPtr is %p  \n", &x, &xPtr);
	printf(" \n The value pointed by xPtr is %p \n", xPtr);
	printf(" \n The adress of vec is %p \n", &vec);
	printf(" \n The values of the vector are %u, %u, %u and %u \n", vec[0], vec[1], vec[2], vec[3]);
	printf(" \n The adresses of the vector are %p, %p, %p and %p \n", &vec[0], &vec[1], &vec[2], &vec[3]);
	
	
	// b) O endereço de 'vec' é o mesmo endereço de 'vec[0]' pois o endereço para qual o 'vec' aponta é para o endereço onde o vetor começa. Em relação aos outros valores, como o vetor é um vetor de inteiros então cada elemento
	// do vetor ocupada 4 bytes e assim justificando o porquê de cada endereço ser sempre +4 ao endereço anterior	
		
	// c) Diferente
	
	
	return 0;
}
