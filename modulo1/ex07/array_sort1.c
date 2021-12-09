void array_sort1(int *vec, int n){
	
	
	int array[n];
	int temp = 0;
	
	
	// Copia os valores do array indicado pelo pointer para um array temporário
	for(int i = 0; i < n;i++){
		
		array[i] = *vec;
		vec++;
	}
	
	
	// Faz o método classico de sorting
	for(int i = 0; i < n; i++){
		
		for( int j = i + 1; j < n; j++){
			
			if( array[i] > array[j]){
				temp = array[j];
				array[j] = array[i];
				array[i] = temp;
			}
			
		}
	
	}
	
	// Dá reset à posição do pointer e coloca-o outra vez no início
	vec = vec - n;
	
	
	// Copia os valores do array temporário para os valores do array indicado pelo pointer
	for(int i = 0; i < n;i++){
		
		*vec = array[i];
		vec++;
	}
	
		
}
