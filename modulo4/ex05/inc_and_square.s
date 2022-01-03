.section .text
.global inc_and_square

inc_and_square:

	## V1 está em '%RDI'
	## V2 está em '%ESI'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	incl (%rdi)				# Aumenta em 1 o valor apontado por '%RDI'
	
	movl %esi,%eax			# Move v2 para '%EAX'
	imul %esi,%eax			# v2² em '%EAX'
	
		
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret
