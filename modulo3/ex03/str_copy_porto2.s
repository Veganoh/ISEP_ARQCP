.section .data
.global ptr1
.global ptr2

.section .text
.global str_copy_porto2

str_copy_porto2:
	movq ptr1(%rip),%rdi		# Guarda o endereço do ptr1 em '%RDI'
	movq ptr2(%rip),%rsi		# Guarda o endereço do ptr2 em '%RSI'
	
	
str_loop:
	movb (%rdi), %cl			# Copiamos o char da string1 (apontado por '%RDI') para '%CL'
		
	cmpb $'v',%cl				# Verificamos se é 'v'
	je str_v					# Salta para receber um tratamento diferente
	
	cmpb $'V',%cl				# Verificamos se é 'V'
	je str_V					# Salta para receber um tratamento diferente
	
	movb %cl,(%rsi)				# Copia o byte para o endereço apontado por '%RSI'
	incq %rdi					# Aponta para o próximo byte
	incq %rsi					# Aponta para o próximo byte
	
	cmpb $0, %cl				# Fim de string?
	jz end 						# Salta para o final

	
	jmp str_loop				# Repete o loop
	
	
str_v:
	movb $'b',(%rsi)
	incq %rdi
	incq %rsi
	jmp str_loop
	
	
str_V:
	movb $'B',(%rsi)
	incq %rdi
	incq %rsi
	jmp str_loop
	
end: 
	ret
	
