.section .data
.global ptrgrades
.global ptrfreq
.global num

.section .text
.global frequencies

frequencies:

	pushq %r8
	pushq %r9
	pushq %r12
	pushq %rbx
	pushq %rdx
	pushq %rsi
	pushq %rdi
	
	movq ptrgrades(%rip),%rsi						# Endereço em '%RSI'
	movq ptrfreq(%rip),%rdi							# Endereço em '%RDI'
	
	movb $21,%bl									# Tamanho do vetor de frequencias
	movq num(%rip),%rdx								# Tamanho do vetor de notas
		
	movb $0,%r8b									# i = 0
	movq $0,%r9										# j = 0	
		

first_loop:
	
	cmpb %r8b,%bl									# Verifica se o i > size das grades
	jle end
	
	movl $0,%eax									# counter = 0					
	cmpl $0,num(%rip)								# Tamanho do vetor de notas é 0?
	jz first_loop_continuation

second_loop:

	cmpq %r9,%rdx									# Verifica se o j > size das frequencias
	jle first_loop_continuation
	
	cmpb %r8b,(%rsi,%r9,1)							# Verifica se o valor procurado está em grades[j]
	je found
	
	jmp second_loop_continuation					# Se não encontrou vai para second_loop_continuation
	
	
found:

	incl %eax										# counter++
	
second_loop_continuation:
	
	incq %r9										# j++
	jmp second_loop
	

first_loop_continuation:
	
	movsbq %r8b,%r12								# O indice é passado para '%R12'
	movl %eax,(%rdi,%r12,4)							# É colocado no apontado, o valor de '%EAX'
	incb %r8b										# i++
	
	movq $0,%r9										# É necessário colocar o j a 0				

	jmp first_loop
	
	
end:
	popq %rdi
	popq %rsi
	popq %rdx
	popq %rbx
	popq %r12
	popq %r9
	popq %r8
	ret
