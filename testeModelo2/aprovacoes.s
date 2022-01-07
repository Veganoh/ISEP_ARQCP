.section .text
.global aprovados

aprovados:
	
	# exames encontra-se em '%RDI'
	# n encontra-se em '%ESI'
	# aprovados encontra-se em '%RDX'
	
	pushq %rbp					# Prologue
	movq %rsp, %rbp
		
	subq $8,%rsp				# Alocar 8 bytes para uma variável local de 8 bytes
	
	movl $0,-8(%rbp)			# Result = 0
	movl $0,%ecx				# i = 0
	movq %rdi,%r8				# Guarda-se o endereço noutro lugar para desempedir o registo que vai ser utilizado para dar call à função
	
	
loop_Exames:
	
	cmpl %ecx,%esi
	je end
	
	movl (%r8),%edi				# Exame em '%EDI'
	
	pushq %rcx					# Salva guarda registos que vão ser necessários
	pushq %rsi
	pushq %r8
	pushq %rdx
	call pontuacao
	popq %rdx
	popq %r8
	popq %rsi
	popq %rcx
	
	cmpl $39,%eax
	jg aprovado
	
	incl %ecx				  # i++
	addq $4,%r8				  # Vai para a o próximo exame
	jmp loop_Exames
		
aprovado:
	movl %edi,(%rdx)	 	  # Coloca a nota obtida, na respetiva posicação do array
	
	incl -8(%rbp)		  	  # result ++
	incl %ecx			  	  # i++
	addq $4,%r8				  # Vai para o pŕoximo exame
	addq $4,%rdx			  # Vai para a próxima posição de aprovados
	jmp loop_Exames
	

end:
	movl -8(%rbp),%eax
	
	movq %rbp,%rsp			# Epilogue
	popq %rbp
	ret
	
