.section .data
.global ptrvec
.global num

.section .text
.global keep_positives


keep_positives:
		
	movq ptrvec(%rip),%rsi			# Endereço em '%RSI'
	movzwq num(%rip),%rcx			# Iterações em '%RCX'
	movl $0,%eax					# index = 0
	
	cmpq $0,%rcx					# Size = 0?
	jz end
	
arr_loop:
	
	cmpl $0,(%rsi)					# Verifica se o número é negativo
	jl negative
	
	jmp continuation


negative:
	
	movl %eax,(%rsi)				# Index para o apontado
	jmp continuation

continuation:
	
	addq $4,%rsi					# Próximo número
	incl %eax						# index++

	loop arr_loop
	
end:
	ret
