.section .text
.global greatest

greatest:
	
	## A está em '%EDI'
	## B está em '%ESI'
	## C está em '%EDX'
	
	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	
	movl %edi,%eax			# A é atualmente o maior
	
	cmpl %esi,%eax			# Verifica se o B é maior
	jl b_greatest			
	
	jmp continuation
	
	
	b_greatest:
	
	movl %esi,%eax			# B agora é o maior
	jmp continuation
	
	continuation:
	
	cmpl %edx,%eax			# Verifica se o C é maior
	jl c_greatest
	
	jmp end
	
	c_greatest:
	movl %edx,%eax			# C agora é o maior
	
		
end:
	
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret
