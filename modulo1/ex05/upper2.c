void upper2(char *str){


	// It goes through the array, till it finds '\0' that means it ended, he checks if the number is in lower case and changes it in case it is
	
	// Percorre o array inteiro até encontrar '\0' o que significa que terminou
	while(*str != '\0'){
	
		// Verifica se o caracter é minusculo, se for subtrai 32 que é igual à sua correspondente maiuscula
		if(*str >= 'a' && *str <= 'z'){
			
			*str = *str - 32;
			
		}
		
		str++;
		
	}


}
