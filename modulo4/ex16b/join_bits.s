.section .text
.global join_bits

join_bits:

	# a em '%EDI'
	# b em '%ESI'
	# pos em '%EDX'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	
	movb %dl,%cl			# Coloca a pos em '%CL'
	
	movl $0xFFFFFFFF,%edx	# Coloca a mascara em '%EDX'
	
	
	shll %cl,%edx			# Dá shift 'pos' shifts para a esquerda para pegar os bits da esquerda
	shll %edx				# pos + 1
	
	andl %edx,%esi			# Fica com os bits de B da esquerda
	
	NOT %edx				# Inverte a máscara

	andl %edx,%edi			# Fica com os bits de A da direita
	
	orl %edi,%esi			# Junta os dois números
	
	movl %esi,%eax			# Passa para '%EAX' o valor

	
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
ret
