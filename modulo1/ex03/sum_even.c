 int sum_even( int *p, int num){
	 
	 int sum = 0;
	
	
	
	// Ciclo que passa pelo array de inteiros
	for(int i = 0; i < num; i++){
		
		// Verifica se é par e se for é adicionado a 'sum'
		if (*p % 2 == 0) sum = sum + *p;
		p++;
		
	}
 
	return sum;
 };
