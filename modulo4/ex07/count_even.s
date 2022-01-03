.section .text
.global count_even

count_even:

	## vec está em '%RDI'
	## n está em '%ESI'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	movl $0,%r8d		# counter = 0, em '%R8D'
	movslq %esi,%rcx	# Número de iterações, em '%RCX'
	movl $2,%r9d		# Divisor, em '%R9D'
	
	movl $0,%eax		# Coloca 0 em '%EAX' para dar return a 0 caso o size do array seja nulo
	cmpl $0,%esi		# Verfica se o size é nulo
	jz end
	
my_loop:
	
	movswl (%rdi),%eax	# Coloca o apontado por '%RDI' em %EAX
	cdq				
	idiv %r9d			
	
	cmpl $0,%edx		# Se o resto for 0 vai incrementar o counter
	jz increment
	
	jmp continuation
	
increment:
	
	incl %r8d			# counter++
	
continuation:
	
	addq $2,%rdi			# Próximo valor apontado por '%RDI'
			
	loop my_loop
	
end:
	movl %r8d,%eax
	
		
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret
