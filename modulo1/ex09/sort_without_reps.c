int sort_without_reps(int *src, int n, int *dest){
	
	if ( n == 0 ) return 0;
	
	if ( n == 1 ) {
		*dest = *src;
		return 1;
	}
	
	
	// Guarda o array em outro array temporário
	
	int temp[n];
	
	for(int i = 0; i < n; i++){
		
		temp[i] = *(src + i);
		
	}
	
	
	
	// Dá sorte ao array
	
	int t;
	
	for(int i = 0; i < n; i++){ // Percorre o array todo
		
		for(int j = i + 1; j < n; j++){ // Percorre todos os elementos depois do elementro indicado em cima
			
			if(*(src + j) < *(src + i)){
				
				t = *(src + i);
				*(src + i) = *(src + j);
				*(src + j) = t;		
			}	
		}
	}
	

	
	// Verifica se o valor que está na posição seguinte é igual ao valor na posição atual, se não for, é adicionado ao array final
	
	int counter = 1;
	
	for(int i = 0; i < n - 1; i++){
		
		if (*(src + i) != *(src + ( i + 1 ))){
			
			*(dest + (counter-1)) = *(src + i);
			counter++;
						
		}
		
		
	}
	
	 *(dest + (counter - 1)) = *(src + (n - 1)); // Adiciona o ultimo valor do array porque esse não se irá repetir, por estar na ultima posição
	
	 

	
	
	// Volta a colocar o array que usamos na sua forma original (este passo não é necessário mas como os testes pedem que o array se mantenha igual, tem de ser feito)
	
	for( int i = 0; i < n; i++){
		
			*(src + i ) = temp[i];
		
		
	}
	
	
	return counter;
	
	
}
		
