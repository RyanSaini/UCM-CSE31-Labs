.data
str0: .asciiz "Please enter a number: \n"
str1: .asciiz "\nSum of positive numbers is: "
str2: .asciiz "\nSum of negative numbers is: "

.text
loop:
	li $v0, 4       
    	la $a0, str0     
    	syscall
  
	li $v0, 5
	syscall
 	move $t0, $v0
 	
 	beq $t0, $zero, END #if  = 0
 	bgt $t0, $zero, positive #if = +
 	blt $t0, $zero, negative #if = -   
 	
 	
 positive:
 	add $t1, $t1, $t0
 	j loop
 	
 	
 negative:
 	add $t2, $t2, $t0
 	j loop
 	
 	
 END: 
 	li $v0, 4      #prints str1 
    	la $a0, str1     
    	syscall
    	
    	li $v0, 1	#prints +int sum
    	la $a0, ($t1)
    	syscall 
    	
    	li $v0, 4      #prints str2 
    	la $a0, str2   
    	syscall
    	
    	li $v0, 1	#prints -int  sum
    	la $a0, ($t2)
    	syscall
    	
    	li $v0, 10 	#ends 
	syscall
 	
 	
 	
 
