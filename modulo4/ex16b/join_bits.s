.section .text
.global join_bits

join_bits:

	# a em '%EDI'
	# b em '%ESI'
	# pos em '%EDX'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	
	movl %edx,%ecx				# Iterações para '%RCX'
	movl $1,%edx				# Máscara para '%EDX'
	
	cmpl $0,%ecx				# Se o n for 0, não pode entrar no loop
	je continuation
	
loop:
	shll %edx					# Shift para a esquerda
	incl %edx					# Preencher com um 1

	loop loop
	
continuation:
	
	andl %edx,%edi		
	notl %edx
	andl %edx,%esi
	
	orl %edi,%esi
	movl %esi,%eax
	
	
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
ret
