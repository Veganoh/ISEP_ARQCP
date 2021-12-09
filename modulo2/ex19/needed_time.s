.section .data
.global current
.global desired
.global op

.section .text
.global needed_time

needed_time:

	pushw %bx						# Guarda o valor de 'BX' para mais tarde ser restaurado
	movw current(%rip),%ax			# Guarda o valor de current num endereço de 16bits, 'AX'
	movw desired(%rip),%bx			# Guarda o valor de current num endereço de 16bits, 'BX'
	
	cmpw %bx,%ax					# Compara a temperatura atual com a desejada '%ax - %bx'
	jg jmp_lowtemperature			# Se current for maior que desired é necessário diminuir a temperatura
	jl jmp_raisetemperature			# Se current for menor que desired é necessário aumentar a temperatura
	je jmp_equal					# Se current for igual ao desired é necessário dar return a 0
	
jmp_lowtemperature:
	subw %bx,%ax					# Descobre quantos graus são neccesários diminuir
	imulw $180,%ax					# Multiplica porque 180 segundos
	movzwl %ax,%eax					# Move o resultado para 'EAX' com extensão de zero
	jmp end
	
jmp_raisetemperature:
	subw %ax,%bx					# Descobre quantos graus são necessários aumentar
	imulw $120,%bx					# Multiplica por 120 segundos
	movzwl %bx,%eax					# Move o resultado para 'EAX' com extensão de zero
	jmp end
	
jmp_equal:	
	movl $0,%eax					# Coloca 0 em 'EAX'
	jmp end
	
end:
	popw %bx						# Restaura o valor de B ao seu estado original
	ret
