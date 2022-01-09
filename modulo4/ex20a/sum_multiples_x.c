int sum_multiples_x(char *vec, int x){
	
	
	char num = (char)(x >> 8);				// Pega no byte que se quer
	int sum = 0;
	
	while(*vec != 0){
		
		if (*vec % num == 0) sum += *vec;	// Verifica se é multiplo
		
		vec++;	
	}

	return sum;
}
