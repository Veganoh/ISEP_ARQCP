.section .text
.global activate_bits

activate_bits:

	# a está em '%EDI'
	# left está em '%ESI'
	# right está em '%EDX'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	pushq %rbx
	
	movl $0,%eax 				# Vamos construir duas máscaras começando pelo lado direito
								
								
	movl %edx,%ebx				# Iterações
	movl $0,%ecx				# i = 0
	
		
rightSide:
	cmpl %ecx,%ebx				# Verifica se o ciclo acabou
	je continuation

	shll %eax					# Dá shift pra esquerda
	incl %eax					# Coloca um em '%EAX'	

	incl %ecx					# i++
	jmp rightSide
	
continuation:
	orl %eax,%edi			 	# Bits do lado direto colocados a 1 e guardados em '%EDI'
	movl $0,%eax 			 	# Limpa-se a máscara
	
	movl $31,%ebx			 	# Iterações
	subl %esi,%ebx			 	# Remove-se todos os números para a direta do esquerdo inclusive
	movl $0,%ecx			 	# i = 0
	
leftSide:
	cmpl %ecx,%ebx				# Verifica se o ciclo acaba
	je end
	
	incl %eax					# Coloca um em '%EAX'
	rorl %eax					# Dá uma rotation para a direita
		
	incl %ecx					# i++
	jmp leftSide
		
end:
	orl %edi,%eax
	
	popq %rbx

	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret
