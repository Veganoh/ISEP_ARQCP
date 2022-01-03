.section .text
.global cube


cube:
	
	## X está em '%EDI' ##
	
	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	
	movl %edi,%eax						# move x para '%EAX'
	
	imul %edi,%eax						# x² em '%EAX'
	imul %edi,%eax						# x³ em '%EAX'
	
	
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret
