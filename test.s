	.text
	.align 2
	.globl main
main:
	addi $sp, $sp, -156
	li $t0, 0
	sw $t0, 28($sp)
	li $t0, 1
	sw $t0, 12($sp)
	li $t0, 4
	sw $t0, 8($sp)
	lw $t1, 12($sp)
	lw $t2, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, 16($sp)
	lw $t1, 16($sp)
	lw $t2, 8($sp)
	add $t0, $t1, $t2
	sw $t0, 16($sp)
	sw $ra, 52($sp)
	lw $t0, 16($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal _malloc
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 20($sp)
	lw $ra, 52($sp)
	lw $t0, 12($sp)
	lw $t1, 20($sp)
	sw $t0, 0($t1)
	lw $t0, 20($sp)
	sw $t0, 0($sp)
	lw $t1, 8($sp)
	lw $t2, 28($sp)
	mul $t0, $t1, $t2
	sw $t0, 32($sp)
	lw $t1, 0($sp)
	lw $t2, 32($sp)
	add $t0, $t1, $t2
	sw $t0, 24($sp)
	lw $t0, 28($sp)
	lw $t1, 24($sp)
	sw $t0, 4($t1)
	sw $ra, 52($sp)
	lw $t0, 0($sp)
	sw $t0, -156($sp)
	addi $sp, $sp, -156
	jal getcount
	addi $sp, $sp, 156
	move $t0, $v0
	sw $t0, 36($sp)
	lw $ra, 52($sp)
	lw $t0, 36($sp)
	sw $t0, 4($sp)
	sw $ra, 52($sp)
	lw $t0, 4($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal printInt
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 40($sp)
	lw $ra, 52($sp)
	la $t0, _L0
	sw $t0, 44($sp)
	sw $ra, 52($sp)
	lw $t0, 44($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal printString
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 48($sp)
	lw $ra, 52($sp)
_main_exit:
	jr $ra
getcount:

	li $t0, 1
	sw $t0, 28($sp)
	li $t0, 0
	sw $t0, 12($sp)
	li $t0, 4
	sw $t0, 4($sp)
	lw $t1, 4($sp)
	lw $t2, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, 16($sp)
	lw $t1, 0($sp)
	lw $t2, 16($sp)
	add $t0, $t1, $t2
	sw $t0, 8($sp)
	lw $t1, 4($sp)
	lw $t2, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, 24($sp)
	lw $t1, 0($sp)
	lw $t2, 24($sp)
	add $t0, $t1, $t2
	sw $t0, 20($sp)
	lw $t1, 20($sp)
	lw $t0, 4($t1)
	sw $t0, 44($sp)
	lw $t1, 44($sp)
	lw $t2, 28($sp)
	add $t0, $t1, $t2
	sw $t0, 32($sp)
	lw $t0, 32($sp)
	lw $t1, 8($sp)
	sw $t0, 4($t1)
	lw $t1, 4($sp)
	lw $t2, 12($sp)
	mul $t0, $t1, $t2
	sw $t0, 40($sp)
	lw $t1, 0($sp)
	lw $t2, 40($sp)
	add $t0, $t1, $t2
	sw $t0, 36($sp)
	lw $t1, 36($sp)
	lw $t0, 4($t1)
	sw $t0, 48($sp)
	lw $t0, 48($sp)
	move $v0, $t0
	j _getcount_exit
_getcount_exit:
	jr $ra
substring:



	li $t0, 1
	sw $t0, 52($sp)
	li $t0, 0
	sw $t0, 48($sp)
	li $t0, 4
	sw $t0, 24($sp)
	la $t0, _L1
	sw $t0, 20($sp)
	lw $t0, 20($sp)
	sw $t0, 16($sp)
	lw $t0, 4($sp)
	sw $t0, 32($sp)
	lw $t1, 0($sp)
	lw $t2, 32($sp)
	add $t0, $t1, $t2
	sw $t0, 28($sp)
	lw $t1, 28($sp)
	lb $t0, 0($t1)
	sw $t0, 44($sp)
	sw $ra, 96($sp)
	lw $t0, 44($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal _charToString
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 40($sp)
	lw $ra, 96($sp)
	sw $ra, 96($sp)
	lw $t0, 16($sp)
	sw $t0, -144($sp)
	lw $t0, 40($sp)
	sw $t0, -140($sp)
	addi $sp, $sp, -144
	jal _strcat
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 36($sp)
	lw $ra, 96($sp)
	lw $t0, 36($sp)
	sw $t0, 16($sp)
	lw $t1, 4($sp)
	lw $t2, 52($sp)
	add $t0, $t1, $t2
	sw $t0, 56($sp)
	lw $t0, 56($sp)
	sw $t0, 12($sp)
_L2:
	lw $t1, 8($sp)
	lw $t2, 4($sp)
	add $t0, $t1, $t2
	sw $t0, 60($sp)
	lw $t0, 12($sp)
	lw $t1, 60($sp)
	bge $t0, $t1, _L3
	lw $t0, 12($sp)
	sw $t0, 68($sp)
	lw $t1, 0($sp)
	lw $t2, 68($sp)
	add $t0, $t1, $t2
	sw $t0, 64($sp)
	lw $t1, 64($sp)
	lb $t0, 0($t1)
	sw $t0, 80($sp)
	sw $ra, 96($sp)
	lw $t0, 80($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal _charToString
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 76($sp)
	lw $ra, 96($sp)
	sw $ra, 96($sp)
	lw $t0, 16($sp)
	sw $t0, -144($sp)
	lw $t0, 76($sp)
	sw $t0, -140($sp)
	addi $sp, $sp, -144
	jal _strcat
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 72($sp)
	lw $ra, 96($sp)
	lw $t0, 72($sp)
	sw $t0, 16($sp)
_L4:
	lw $t1, 12($sp)
	lw $t2, 52($sp)
	add $t0, $t1, $t2
	sw $t0, 84($sp)
	lw $t0, 84($sp)
	sw $t0, 12($sp)
	j _L2
_L3:
	lw $t0, 16($sp)
	move $v0, $t0
	j _substring_exit
_substring_exit:
	jr $ra
readString:
	li $t0, 9
	sw $t0, 48($sp)
	li $t0, 10
	sw $t0, 40($sp)
	li $t0, 32
	sw $t0, 32($sp)
	li $t0, 1
	sw $t0, 20($sp)
	li $t0, 0
	sw $t0, 16($sp)
	la $t0, _L1
	sw $t0, 8($sp)
	lw $t0, 8($sp)
	sw $t0, 4($sp)
	sw $ra, 104($sp)
	addi $sp, $sp, -144
	jal readChar
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 12($sp)
	lw $ra, 104($sp)
	lw $t0, 12($sp)
	sw $t0, 0($sp)
_L5:
	lw $t0, 20($sp)
	sw $t0, 24($sp)
	lw $t0, 20($sp)
	sw $t0, 28($sp)
	lw $t1, 0($sp)
	lw $t2, 32($sp)
	seq $t0, $t1, $t2
	sw $t0, 36($sp)
	lw $t0, 36($sp)
	lw $t1, 16($sp)
	bne $t0, $t1, _L8
	lw $t1, 0($sp)
	lw $t2, 40($sp)
	seq $t0, $t1, $t2
	sw $t0, 44($sp)
	lw $t0, 44($sp)
	lw $t1, 16($sp)
	bne $t0, $t1, _L8
	lw $t0, 16($sp)
	sw $t0, 28($sp)
_L8:
	lw $t0, 28($sp)
	lw $t1, 16($sp)
	bne $t0, $t1, _L7
	lw $t1, 0($sp)
	lw $t2, 48($sp)
	seq $t0, $t1, $t2
	sw $t0, 52($sp)
	lw $t0, 52($sp)
	lw $t1, 16($sp)
	bne $t0, $t1, _L7
	lw $t0, 16($sp)
	sw $t0, 24($sp)
_L7:
	lw $t0, 24($sp)
	lw $t1, 16($sp)
	beq $t0, $t1, _L6
	sw $ra, 104($sp)
	addi $sp, $sp, -144
	jal readChar
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 56($sp)
	lw $ra, 104($sp)
	lw $t0, 56($sp)
	sw $t0, 0($sp)
	j _L5
_L6:
	sw $ra, 104($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal _charToString
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 64($sp)
	lw $ra, 104($sp)
	sw $ra, 104($sp)
	lw $t0, 4($sp)
	sw $t0, -144($sp)
	lw $t0, 64($sp)
	sw $t0, -140($sp)
	addi $sp, $sp, -144
	jal _strcat
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 60($sp)
	lw $ra, 104($sp)
	lw $t0, 60($sp)
	sw $t0, 4($sp)
	sw $ra, 104($sp)
	addi $sp, $sp, -144
	jal readChar
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 68($sp)
	lw $ra, 104($sp)
	lw $t0, 68($sp)
	sw $t0, 0($sp)
_L9:
	lw $t0, 16($sp)
	sw $t0, 72($sp)
	lw $t0, 16($sp)
	sw $t0, 76($sp)
	lw $t1, 0($sp)
	lw $t2, 32($sp)
	sne $t0, $t1, $t2
	sw $t0, 80($sp)
	lw $t0, 80($sp)
	lw $t1, 16($sp)
	beq $t0, $t1, _L12
	lw $t1, 0($sp)
	lw $t2, 40($sp)
	sne $t0, $t1, $t2
	sw $t0, 84($sp)
	lw $t0, 84($sp)
	lw $t1, 16($sp)
	beq $t0, $t1, _L12
	lw $t0, 20($sp)
	sw $t0, 76($sp)
_L12:
	lw $t0, 76($sp)
	lw $t1, 16($sp)
	beq $t0, $t1, _L11
	lw $t1, 0($sp)
	lw $t2, 48($sp)
	sne $t0, $t1, $t2
	sw $t0, 88($sp)
	lw $t0, 88($sp)
	lw $t1, 16($sp)
	beq $t0, $t1, _L11
	lw $t0, 20($sp)
	sw $t0, 72($sp)
_L11:
	lw $t0, 72($sp)
	lw $t1, 16($sp)
	beq $t0, $t1, _L10
	sw $ra, 104($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal _charToString
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 96($sp)
	lw $ra, 104($sp)
	sw $ra, 104($sp)
	lw $t0, 4($sp)
	sw $t0, -144($sp)
	lw $t0, 96($sp)
	sw $t0, -140($sp)
	addi $sp, $sp, -144
	jal _strcat
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 92($sp)
	lw $ra, 104($sp)
	lw $t0, 92($sp)
	sw $t0, 4($sp)
	sw $ra, 104($sp)
	addi $sp, $sp, -144
	jal readChar
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 100($sp)
	lw $ra, 104($sp)
	lw $t0, 100($sp)
	sw $t0, 0($sp)
	j _L9
_L10:
	lw $t0, 4($sp)
	move $v0, $t0
	j _readString_exit
_readString_exit:
	jr $ra
readLine:
	li $t0, 10
	sw $t0, 16($sp)
	li $t0, 0
	sw $t0, 12($sp)
	sw $ra, 28($sp)
	addi $sp, $sp, -144
	jal readChar
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 8($sp)
	lw $ra, 28($sp)
	lw $t0, 8($sp)
	sw $t0, 4($sp)
_L13:
	lw $t0, 4($sp)
	lw $t1, 16($sp)
	beq $t0, $t1, _L14
	sw $ra, 28($sp)
	lw $t0, 4($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal _charToString
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 24($sp)
	lw $ra, 28($sp)
	sw $ra, 28($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	lw $t0, 24($sp)
	sw $t0, -140($sp)
	addi $sp, $sp, -144
	jal _strcat
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 20($sp)
	lw $ra, 28($sp)
	lw $t0, 20($sp)
	sw $t0, 0($sp)
	j _L13
_L14:
	lw $t0, 0($sp)
	move $v0, $t0
	j _readLine_exit
_readLine_exit:
	jr $ra
parseInt:

	li $t0, 1
	sw $t0, 60($sp)
	li $t0, 48
	sw $t0, 52($sp)
	li $t0, 4
	sw $t0, 28($sp)
	li $t0, 10
	sw $t0, 20($sp)
	li $t0, 0
	sw $t0, 12($sp)
	lw $t0, 12($sp)
	sw $t0, 4($sp)
	lw $t0, 12($sp)
	sw $t0, 8($sp)
_L15:
	sw $ra, 72($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal _strlen
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 16($sp)
	lw $ra, 72($sp)
	lw $t0, 8($sp)
	lw $t1, 16($sp)
	bge $t0, $t1, _L16
	lw $t1, 4($sp)
	lw $t2, 20($sp)
	mul $t0, $t1, $t2
	sw $t0, 24($sp)
	lw $t0, 8($sp)
	sw $t0, 36($sp)
	lw $t1, 0($sp)
	lw $t2, 36($sp)
	add $t0, $t1, $t2
	sw $t0, 32($sp)
	lw $t1, 32($sp)
	lb $t0, 0($t1)
	sw $t0, 40($sp)
	sw $ra, 72($sp)
	lw $t0, 40($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal ord
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 44($sp)
	lw $ra, 72($sp)
	lw $t1, 24($sp)
	lw $t2, 44($sp)
	add $t0, $t1, $t2
	sw $t0, 48($sp)
	lw $t1, 48($sp)
	lw $t2, 52($sp)
	sub $t0, $t1, $t2
	sw $t0, 56($sp)
	lw $t0, 56($sp)
	sw $t0, 4($sp)
_L17:
	lw $t1, 8($sp)
	lw $t2, 60($sp)
	add $t0, $t1, $t2
	sw $t0, 64($sp)
	lw $t0, 64($sp)
	sw $t0, 8($sp)
	j _L15
_L16:
	lw $t0, 4($sp)
	move $v0, $t0
	j _parseInt_exit
_parseInt_exit:
	jr $ra
fillIntArray:


	li $t0, 1
	sw $t0, 28($sp)
	li $t0, 4
	sw $t0, 16($sp)
	li $t0, 0
	sw $t0, 12($sp)
	lw $t0, 12($sp)
	sw $t0, 8($sp)
_L18:
	lw $t1, 0($sp)
	lw $t0, 0($t1)
	sw $t0, 36($sp)
	lw $t0, 8($sp)
	lw $t1, 36($sp)
	bge $t0, $t1, _L19
	lw $t1, 16($sp)
	lw $t2, 8($sp)
	mul $t0, $t1, $t2
	sw $t0, 24($sp)
	lw $t1, 0($sp)
	lw $t2, 24($sp)
	add $t0, $t1, $t2
	sw $t0, 20($sp)
	lw $t0, 4($sp)
	lw $t1, 20($sp)
	sw $t0, 4($t1)
_L20:
	lw $t1, 8($sp)
	lw $t2, 28($sp)
	add $t0, $t1, $t2
	sw $t0, 32($sp)
	lw $t0, 32($sp)
	sw $t0, 8($sp)
	j _L18
_L19:
	lw $t0, 28($sp)
	move $v0, $t0
	j _fillIntArray_exit
_fillIntArray_exit:
	jr $ra
_malloc:  				#done
    lw $a0, 0($sp)
    li $v0, 9
    syscall
    jr $ra

_strcmp:   			#done t0<t1 r -1 t0=t1 r 0 t0>t1 r 1
    lw $t0, 0($sp)
    lw $t1, 4($sp)
_strcmp_begin:
    lb $t2, 0($t0)
    lb $t3, 0($t1)
    blt $t2, $t3, _strcmp_less
    bgt $t2, $t3, _strcmp_greater
    beq $t2, $zero, _strcmp_equal
    addi $t0, $t0, 1
    addi $t1, $t1, 1
    j _strcmp_begin
_strcmp_less:				
    li $v0, -1
    jr $ra
_strcmp_greater:
    li $v0, 1
    jr $ra
_strcmp_equal:
    li $v0, 0
    jr $ra

_intToString:			#done
    lw $t0, 0($sp)
    li $t1, 0
    bge $t0, $zero, intToString_l1
    li $t1, 1
    neg $t0, $t0
intToString_l1:
    move $t3, $t0
    li $t2, 0
intToString_l2:
    addi $t2, $t2, 1
    div $t3, $t3, 10
    bne $t3, $zero, intToString_l2
    addi $a0, $t2, 1
    beq $t1, $zero, intToString_l3
    addi $a0, $a0, 1
intToString_l3:
    li $v0, 9
    move $t3, $a0
    syscall
    beq $t1, $zero, intToString_l5
    li $t4, 45
    sb $t4, 0($v0)
intToString_l5:
    add $t3, $v0, $t3
    addi $t3, $t3, -1
    sb $zero, 0($t3)    
    addi $t3, $t3, -1
intToString_l4:
    rem $t4, $t0, 10
    addi $t4, $t4, 48
    sb $t4, 0($t3)
    addi $t3, $t3, -1
    div $t0, $t0, 10
    bne $t0, $zero, intToString_l4
    jr $ra

_charToString: 		#done
    li $a0, 2
    li $v0, 9
    syscall
    lb $t0, 0($sp)
    sb $t0, 0($v0)
    sb $zero, 1($v0)
    jr $ra

_strlen:
    lw $t0, 0($sp)
    li $v0, 0
_strlen_begin:
    lb $t1, 0($t0)
    beq $t1, $zero, _strlen_end
    addi $t0, $t0, 1
    addi $v0, $v0, 1
    j _strlen_begin
_strlen_end:
    jr $ra

_strcat:			#done  t0.t1
    lw $t0, 0($sp)
    move $t7, $t0
    lw $t6, 4($sp)
    addi $sp, $sp, -8
    sw $ra, 4($sp)	#aa
    sw $t0, 0($sp)	#aa
    jal _strlen
    move $t2, $v0
    move $t1, $t6
    sw $t1, 0($sp)  #aa
    jal _strlen
    move $t1, $t6
    move $t3, $v0
    add $a0, $t2, $t3
    addi $a0, $a0, 1
    li $v0,9
    syscall
    move $t1, $t6
	move $t0, $t7
    move $t5, $v0
_strcat_l1:
    lb $t4, 0($t0)
    beq $t4, $zero, _strcat_l2
    sb $t4, 0($t5)
    addi $t0, $t0, 1
    addi $t5, $t5, 1
    j _strcat_l1
_strcat_l2:
    lb $t4, 0($t1)
    beq $t4, $zero, _strcat_l3
    sb $t4, 0($t5)
    addi $t1, $t1, 1
    addi $t5, $t5, 1	#wrong
    j _strcat_l2
_strcat_l3:
    sb $zero, 0($t5)
    lw $ra, 4($sp)	#myself
    addi $sp, $sp, 8
    jr $ra

readInt:			#done
    li $v0, 5
    syscall
    jr $ra

readChar:			#done
    li $v0, 8
    move $a0, $sp
    li $a1, 2
    syscall
    lb $v0, 0($sp)
    jr $ra

printInt:			#done
    li $v0, 1
    lw $a0, 0($sp)
    syscall
    jr $ra

printChar:			#done
    sb $zero, 1($sp)
    li $v0, 4
    move $a0, $sp
    syscall
    jr $ra

printString:		#done
    lw $a0, 0($sp)
    li $v0, 4
    syscall
    jr $ra

printLine:			#done
    lw $a0, 0($sp)
    li $v0, 4
    syscall
    li $t0, 10
    sb $t0, 0($sp)
    sb $zero, 1($sp)
    li $v0, 4
    move $a0, $sp
    syscall
    jr $ra

ord:		#myself
	lb	$v0 0($sp)
	jr $ra

chr: 		#myself
	lb	$v0 0($sp)
	jr $ra

	.data
_L1:
	.asciiz ""
_L0:
	.asciiz "end"
