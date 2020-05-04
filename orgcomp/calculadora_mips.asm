.data
	.align 1
op:	.asciiz "\nDigite qual operação deseja realizar:\n1. SOMA  2. SUBTRACAO  3.MULTIPLICACAO  4.DIVISAO\n5. POTENCIACAO  6. RADICIACAO 7. TABUADA  8. IMC\n9. FATORIAL 10. FIBONACCI 0. SAIR\n"
x:	.asciiz " x "
eq:	.asciiz " = "
bl:	.asciiz "\n"
strDivPorZero: .asciiz "Erro, n�o � poss�vel dividir por zero, tente novamente\n"
strFatNegativo: .asciiz "Erro, n�o � poss�vel calcular fatorial de um n�mero negativo, tente novamente\n"
strRaizNumNegativo: .asciiz "Erro, n�o � poss�vel calcular raiz de um n�mero negativo, tente novamente\n"
strFibInvalido: .asciiz "Erro, n�o � poss�vel calcular fibonacci se o n�mero passado for <= a zero, tente novamente\n"
strAlturaInvalida: .asciiz "Erro, n�o � poss�vel calcular imc com altura negativa ou igual a zero, tente novamente\n"
strZeroElevadoZero: .asciiz "Erro, n�o � poss�vel calcular 0^0, tente novamente\n"
strPrimeiroOperando: .asciiz "Digite o primeiro operando:\n"
strSegundoOperando: .asciiz "Digite o segundo operando:\n"
strArgumento: .asciiz "Digite o argumento\n"
strResultado: .asciiz "O resultado é:\n"

	.align 2
floatZero: .float 0.0

.text
main:	
	li $v0, 4     		#comando para impressão de string
	la $a0, op    		#imprime a string com as opcoes da calculdadora
	syscall       		#chamada do sistema
	
switch:	
	li $v0, 5    		#comando para input de inteiro como parametro para o switch		
	syscall	     		#chamada do sistema
	beq $v0, 1, sum		#comparação feita com o parametro: case 1 - adição
	beq $v0, 2, sub		#case 2 - subtração
	beq $v0, 3, mul		#case 3 - multiplicacao
	beq $v0, 4, div		#case 4 - divisão
	beq $v0, 5, pow		#case 5 - potencicao
	beq $v0, 6, sqr		#case 6 - radiciacao
	beq $v0, 7, tab		#case 7 - tabuada
	beq $v0, 8, imc		#case 8 - imc
	beq $v0, 9, fat		#case 9 - fatorial
	beq $v0, 10, fib	#case 10 - fibonnaci
	j sair
	
	
###############################################################################
sum:	
	li $v0, 4
	la $a0, strPrimeiroOperando
	syscall
	
	li $v0, 6		#comando para leitura de float
	syscall       		#chamada do sistema
	mov.s $f1, $f0		#move input de f0 para f1
	
	li $v0, 4
	la $a0, strSegundoOperando
	syscall
	
	li $v0, 6
	syscall       		#chamada do sistema
	mov.s $f2, $f0		#move input de f0 para f2
	
	add.s $f1, $f1, $f2 	#realiza a operação f1 = f1 +f2
	mov.s $f12, $f1		#move resultado de f1 para f12
	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	li $v0, 2   		#comando para imprimir float
	syscall			#chamada do sistema
	j main			#jump para o labem main

###############################################################################
sub:	
	li $v0, 4
	la $a0, strPrimeiroOperando
	syscall
	
	li $v0, 6		#comando para leitura de float
	syscall       		#chamada do sistema
	mov.s $f1, $f0		#move input de f0 para f1
	
	li $v0, 4
	la $a0, strSegundoOperando
	syscall
	
	li $v0, 6
	syscall       		#chamada do sistema
	mov.s $f2, $f0		#move input de f0 para f2
	
	sub.s $f1, $f1, $f2 	#realiza a operação f1 = f1 - f2
	mov.s $f12, $f1		#move resultado de f1 para f12
	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	li $v0, 2   		#comando para imprimir float
	syscall			#chamada do sistema
	j main			#jump para o labem main
		
###############################################################################
mul:	
	li $v0, 4
	la $a0, strPrimeiroOperando
	syscall
	
	li $v0, 6		#comando para leitura de float
	syscall       		#chamada do sistema
	mov.s $f1, $f0		#move input de f0 para f1
	
	li $v0, 4
	la $a0, strSegundoOperando
	syscall
	
	li $v0, 6
	syscall       		#chamada do sistema
	mov.s $f2, $f0		#move input de f0 para f2
	
	mul.s $f1, $f1, $f2 	#realiza a operação f1 = f1 * f2
	mov.s $f12, $f1		#move resultado de f1 para f12
	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	li $v0, 2   		#comando para imprimir float
	syscall			#chamada do sistema
	j main			#jump para o labem main

###############################################################################
div:	
	li $v0, 4
	la $a0, strPrimeiroOperando
	syscall
	
	li $v0, 6		#comando para leitura de float
	syscall       		#chamada do sistema
	mov.s $f1, $f0		#move input de f0 para f1
	
	li $v0, 4
	la $a0, strSegundoOperando
	syscall
	
	li $v0, 6
	syscall       		#chamada do sistema
	mov.s $f2, $f0		#move input de f0 para f2
	
	l.s $f0,floatZero	#f0=0
	c.eq.s $f2,$f0		#c=($f0==$f2)?1:0
	bc1t divPorZero		#jump p/ divPorZero se c==1
	
	div.s $f1, $f1, $f2 	#realiza a operação f1 = f1 / f2
	mov.s $f12, $f1		#move resultado de f1 para f12
	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	li $v0, 2   		#comando para imprimir float
	syscall			#chamada do sistema
	j main			#jump para o labem main

divPorZero:	#exibe mensagem de erro
	li $v0,4	#c�digo para imprimir string
	la $a0,strDivPorZero	#string a ser exibida
	syscall		#chamada ao sistema
	j main		#volta para o inicio do programa
	
###############################################################################
# f0=numero atual, f1=base, f2= expoente, t0=sinal do expoente

pow:	
	li $v0, 4
	la $a0, strPrimeiroOperando
	syscall
	
	li $v0, 5		#leitura de inteiro
	syscall			#chamada do sistema
	move $t1, $v0		#move o input de v0 para t1
	
	li $v0, 4
	la $a0, strSegundoOperando
	syscall
	
	li $v0, 5		#leitura de inteiro
	syscall			#chamada do sistema
	move $t2, $v0		#copia v0 em t2
	
	and $t0,$t1,$t2
	beq $t0,$zero,ambosZero
	
	move $t0, $t1		#copia t1 no t0

	
pop:	
	beq $t2, 1, pend	# se t2 for maior que 1, ele realiza a multiplicacao, senÃ£o, ele pula para o fim da rotina
	mul $t0, $t0, $t1	#mulltiplica t2 vezes t1/ t0= t0 * t1
	sub $t2, $t2, 1 	#t2 diminui
	j pop 			#pula para o inicio da operaÃ§aao
	
pend:	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	move $a0, $t0		#copia t0 (resultado) em a0
	li $v0, 1		#comando para impressao de um inteiro
	syscall			#chamada do sistema
	j main			#pula de volta para a main

ambosZero:		#exibe mensagem de erro caso 0^0
	li $v0,4	#código para exibir string
	la $a0,strZeroElevadoZero	#string a ser exibida
	syscall		#chamada do sistema
	j main		#volta ao início do programa
	
###############################################################################

#metodo de newton para a obtencao de raizes quadradas sqrt(a)= (a+x^2)/2x
#t0 = a, t7=x^2, t9=x

sqr:	
	li $v0, 4
	la $a0, strArgumento
	syscall
	
	li $v0, 5		#leitura de inteiro
	syscall			#chamada do sistema
	
	blt $v0,$zero,raizNumNegativo #se o inteiro digitado � negativo
	
	move $t0, $v0		#move o input de v0 para t0
	li $t7, 0		#auxiliar para a função get x
	li $t8, 1		#auxiliar para a função get x
	li $t9, 0		#contador para a função get x

#get x: encontra a raiz perfeita mais proxima de a atraves da soma dos a primeiros impares

getx:	
	add $t7, $t7, $t8	#adiciona o impar na soma total em t7
	add $t9, $t9, 1		#incrementa o contador
	add $t8, $t8, 2		#leva t8 para o proximo impar, adicionando 2
	bgt $t0, $t7, getx	#caso t0 seja maior que t7, a funcao recomeça
	
	add $t7, $t7, $t0	#t7 = t7 + t0 = x^2 + a
	mul $t9, $t9, 2		#t9 = t9*2 = 2x
	
	mtc1 $t7, $f12		#move t0 para f12 (integer to float)
	cvt.s.w $f12, $f12	# converte de inteiro para float
	
	mtc1 $t9, $f13 		#move t7 para f13
	cvt.s.w $f13, $f13	#converte int para float
	
	div.s $f12, $f12, $f13	#f12 = f12/f13 = sqrt(a)
	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	li $v0, 2   		#comando para imprimir float
	syscall			#chamada do sistema
	j main			#jump para o label main

raizNumNegativo:	#exibe mensagem de erro em caso de n�mero negativo
	li $v0,4	#c�digo para imprimir string
	la $a0,strRaizNumNegativo	#string a ser exibida
	syscall		#chamada do sistema
	j main		#volta ao inicio do programa
##############################################################################

tab: 	
	li $v0, 4
	la $a0, strArgumento
	syscall
	
	li $v0, 5		#leitura de inteiro
	syscall			#chamada do sistema
	move $t0, $v0		#move o input de v0 para t0
	li $t1, 0		#carrega o valor zero no t1
	
tfor:	
	move $a0, $t0		#move o t1 para o a0
	li $v0, 1		#comando para impressao de inteiro
	syscall			#chamada do sistema
	
	la $a0, x		#carrega o endereço de x em a0
	li $v0, 4		#comando para impressao de string
	syscall
	
	move $a0, $t1		#move o t1 para o a0
	li $v0, 1		#comando para impressao de inteiro
	syscall			#chamada do sistema
	
	la $a0, eq		#carrega o endereço de x em a0
	li $v0, 4		#comando para impressao de string
	syscall			#chamada do sistema
	
	mul $a0, $t0, $t1	#a0 = t0 * t1
	li $v0, 1		#impressao de inteiros
	syscall			#chamada do sistema
	
	la $a0, bl		#carrega o endereço de x em a0
	li $v0, 4		#comando para impressao de string
	syscall			#chamada do sistema
	
	add $t1, $t1, 1		#adiciona 1 no iterador
	blt $t1, 10, tfor
	
	j main
	
###############################################################################

imc: 	
	li $v0, 4
	la $a0, strPrimeiroOperando
	syscall
	
	li $v0, 6		#comando para leitura de float
	syscall       		#chamada do sistema
	mov.s $f1, $f0		#move input de f0 para f1
	
	li $v0, 4
	la $a0, strSegundoOperando
	syscall
	
	li $v0, 6		#comando para leitura de float
	syscall       		#chamada do sistema
	
	l.s $f2,floatZero #$f2=0
	c.le.s $f0,$f2#c=($f0<=0)?1:0
	bc1t alturaInvalida#jump para alturaInvalida se c==1
	
	mul.s $f0, $f0, $f0	#altura ao quadrado
	
	div.s $f12, $f1, $f0 	#peso/altura^2
	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	li $v0, 2   		#comando para imprimir float
	syscall			#chamada do sistema
	j main			#jump para o labem main
	
alturaInvalida: #exibe mensagem de erro
	li $v0,4	#c�digo para imprimir string
	la $a0,strAlturaInvalida	#string a ser exibida
	syscall		#chamada do sistema
	j main		#volta ao inicio do programa
	
##############################################################################	
	
fat:	
	li $v0, 4
	la $a0, strArgumento
	syscall
	
	li $v0, 5		#leitura de inteiro
	syscall			#chamada do sistema
	blt $v0,$zero,fatorialNegativo #Se o usu�rio digitou um n�mero negativo
	move $a0, $v0		#copia o valor d $v0 em $a0		
	jal fatorial		#jump para fatorial com linkagem,calcula fatorial do n�mero 
		
	li $v0, 4
	la $a0, strResultado
	syscall
	
	move $a0, $v0		#move $v0 para $a0
	li $v0, 1		#comando para output de inteiro
	syscall			#chama o sistma
	
	j main			#retorna a main

fatorialNegativo:	#Imprime mensagem de erro 
	li $v0,4	#c�digo para imprimir string
	la $a0,strFatNegativo	#string a ser impressa
	syscall		#imprime a string
	j main		#volta para o inicio do programa

fatorial:
	beq $a0,$zero,fimFatorial	#se for fatorial de zero vai para a condi��o de parada
	addi $sp,$sp,-8			#reserva 2 palavras
	sw $ra,4($sp)			#armazena $ra na pilha
	sw $a0,0($sp)			#armazena $a0 na pilha
	addi $a0,$a0,-1			#$a0--
	jal fatorial			#calcula fatorial de n-1
	lw $ra,4($sp)			#recupera valor de $ra
	lw $a0,0($sp)			#recupera valor de $a0
	addi $sp,$sp,8			#libera espa�o alocado na pilha
	mul $v0,$v0,$a0			#$v0=n*fat(n-1)
	jr $ra				#retorna para quem chamou
	
fimFatorial:		#retorna 1
	li $v0,1 	#$v0=1
	jr $ra		#retorna para quem chamou
			
##############################################################################

fib:	
	li $v0, 4
	la $a0, strArgumento
	syscall
	
	li $v0, 5		#leitura de inteiro
	syscall			#chamada do sistema
	
	ble $v0,$zero,fibInvalido #Se o n�mero digitado for <=0
	
	move $a0, $v0		#copia $v0 para $a0
	jal fibonacci		#jump para o label fibonnaci com linkagem
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, strResultado
	syscall
	
	move $a0, $t0		#copia $v0 em $a0
	li $v0, 1		#comando para output
	syscall			#chama o sistema
	
	j main			#volta pra main

fibInvalido:		#Exibe mensagem de erro
	li $v0,4	#C�digo para exibir string
	la $a0,strFibInvalido	#string a ser exibida
	syscall		#chamada ao sistema
	j main		#volta ao in�cio do programa

fibonacci:
	li $t0,1			#$t0=1
	beq $a0,$t0,fimFibonacci	#se $a0==$t0 v� para fimFibonacci
	li $t0,2			#$t0=2
	beq $a0,$t0,fimFibonacci	#se $a0==$t0 v� para fimFibonacci
	
	addi $sp,$sp,-12		#reserva 3 palavras na pilha
	sw $ra,8($sp)			#armazena $ra na pilha
	sw $a0,4($sp)			#armazena $a0 na pilha
	sw $s0,0($sp)			#armazena $s0 na pilha
	
	addi $a0,$a0,-1			#$a0--
	jal fibonacci			#calcula fibonacci(n-1)
	move $s0,$v0			#salva o valor retornada
	
	addi $a0,$a0,-1			#$a0--
	jal fibonacci			#calcula fibonacci(n-2)
	
	add $v0,$v0,$s0			#return fibonacci(n-2)+fibonacci(n-1)
	
	lw $ra,8($sp)			#recupera $ra da pilha
	lw $a0,4($sp)			#recupera $a0 da pilha
	lw $s0,0($sp)			#recupera $s0 da pilha
	addi $sp,$sp,12			#desaloca o espa�o usado na pilha
	jr $ra				#volta para quem chamou
	
fimFibonacci:#Retorna 1
	li $v0,1
	jr $ra
	
###############################################################################	
sair:	li $v0,10     		#comando para a saida do programa
	syscall
