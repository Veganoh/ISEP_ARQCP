int join_bits(int a, int b, int pos){
	
	
	int mask = 1;
	int i;
	
	for(i = 0; i < pos; i++){				// Constroi a máscara para pegar primeiro nos da direita
		
		mask = mask << 1;
		mask += 1;
		
	}
	
	a &= mask;
	mask = ~mask;							// Inverte a máscara
	
	b &= mask;							
	
	return a|b;								// Junta os dois números
 }
