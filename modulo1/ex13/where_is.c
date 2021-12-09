int where_is (char *str, char c, int *p){
	
	int size = 0;
	char i = 0;
	
	
	// Procura pelo caracter em cada espaço do array e se o encontrar da return à posição do outro array
	
	while( *(str + i) != '\0'){
		
		if ( *(str + i) == c){
			
			*(p + size) = i;
			size++;
		}
		
		i++;
	}


	return size;


}
