.data

str_palindrome: .asciiz "É palíndrome.\n"
str_nao_palindrome: .asciiz "Não é palíndrome.\n"
buffer: .space 1000

.text
j main

###############################################################################
# entrada : $a0 (endreco da string)
# saida : $v0 (1 se for palindrome 0 caso contrario)
# temporarios : $t0 (inicio da string), $t1 (fim da string)
#               $t2 (valor do char ($t0)), $t3 (valor do char ($t1))

palindrome:
	move $t0, $a0
	move $t1, $a0
	li $v0, 0

loop_fim_string:
	lb $t2, ($t1)	
	beqz $t2, loop_fim_string_exit
	addi $t1, $t1, 1
	j loop_fim_string
	
loop_fim_string_exit:
	# ignorar o \0 e \n
	subi $t1, $t1, 2

loop_palindrome:
	bge $t0, $t1, good_palindrome 
	
	lb $t2, ($t0)
	lb $t3, ($t1)
	
	bne $t2, $t3, fail_palindrome
	
	addi $t0, $t0, 1
	subi $t1, $t1, 1
	
	j loop_palindrome 

good_palindrome:
	li $v0, 1
fail_palindrome:
	jr $ra
	
###############################################################################
main:
	la $a0, buffer
	li $a1, 1000

	# syscall de ler string
	li $v0, 8
	
	syscall
	
	la $a0, buffer
	jal palindrome
	
	beqz $v0, fail_print
	
	la $a0, str_palindrome
	j print
fail_print:
	la $a0, str_nao_palindrome
print:
	# syscall de imprimir string
	li $v0, 4
	syscall
	
	# sair do programa
	li $v0, 10
	syscall