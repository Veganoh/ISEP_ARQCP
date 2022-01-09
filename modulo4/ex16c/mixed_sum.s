.section .text
.global mixed_sum

mixed_sum:

	# a em '%EDI'
	# b em '%ESI'
	# pos em '%EDX'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	subq $24,%rsp				# Alocar 3 bytes para 3 variavéis locais
	
	movl %edi,-8(%rbp)			# Guardar a
	movl %esi,-16(%rbp)			# Guardar b
	
	pushq %rdx					# Guardar a pos 
	call join_bits				
	popq %rdx
	
	movl %eax,-24(%rbp)			# Guardar o valor da sum
	
	movl -8(%rbp),%esi			# Preparar o chamamento da função
	movl -16(%rbp),%edi
	
	call join_bits
	
	addl -24(%rbp),%eax
	
		
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
ret
