.data
n: 	.word 25 
str1: .asciiz "Less than\n"
str2: .asciiz "Less than or equal to\n"
str3: .asciiz "Greater than\n"
str4: .asciiz "Greater than or equal to\n"
.text
 
	li 	$v0, 5 #read integer value
    	syscall
	move 	$t0, $v0
	
	la 	$t1, n 
	lw 	$t1, 0($t1) #these two lines load value of n into $t1. 
	
	
	#Following is Q5:
	
	#slt	$t2, $t0, $t1 
	#bne	$t2, $zero, less	
	#j 	gr_eq
	
	
#less:
	#li 	$v0, 4
	#la 	$a0, str1
	#syscall
	#j END
	
#gr_eq:
	#slt $t2, $t0, $t1
	#beq $t2, $zero, gr_eqprint
	#j END
	

#gr_eqprint
	#li 	$v0, 4
	#la 	$a0, str4
	#syscall
	#j END
	

	slt	$t2, $t0, $t1 

	beq	$t2, $zero, greater	
	j 	less_eq
	
	
greater:
	li 	$v0, 4
	la 	$a0, str3
	syscall
	j END
	
less_eq: 
	beq $t0, $t1, less_eqprint
	bne $t0, $t1, less_eqprint 
	
less_eqprint:
	li $v0, 4
 	la $a0, str2
	syscall
	j END
	
	
END: 
	li 	$v0, 10
	syscall
	
	
