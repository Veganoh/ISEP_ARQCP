int palindrome(char *str){


	int size = 0;
	
	// Consegue o tamanho do array
	
	while(*(str + size) != '\0'){
		
		size++;
		
	}
	
	
	if ( size == 0 ) return 0;
	
	if ( size == 1) return 1;
	
	
	// Copia a string sem espaços, virgulas e pontos finais num array temporário
	char tempArray[size];
	int  counter = 0;
	
	for(int i = 0; i < size; i++){
		
		if (*(str + i) != ' ' && *(str + i) != ',' && *(str + i) != '.'){
			
			tempArray[counter] = *(str + i);
			
			if (tempArray[counter] >= 'A' && tempArray[counter]  <= 'Z') tempArray[counter]  = tempArray[counter]  + 32;			// Se o número tiver em maiusculas é passado para minuscula
			
			counter++;
			
			

		}
		
	}

	
	
	// Verifica se o caracter da posição atual é igual ao caracter da posição oposta
	
	for( int i = 0; i < size/2; i++){
		
			if (tempArray[i] != tempArray[counter-1]){
			
				return 0;
				
			}else return 1;
			
			counter--;
		
		
	}
	

	
	return 1;
	


}
