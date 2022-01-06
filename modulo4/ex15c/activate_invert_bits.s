.section .text
.global activate_invert_bits

activate_invert_bits:

	# a está em '%EDI'
	# left está em '%ESI'
	# right está em '%EDX'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 


	call activate_bits
	
	not %eax				# Só dar NOT para inverter os bits
	

	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret
