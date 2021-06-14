.data

str1: .asciiz "Please enter an integer: "
        .text
main: 		addi $sp, $sp, -4	
		li 	$v0, 4 
		la 	$a0, str1
		syscall
		
		li $v0, 5
		syscall
					#using $a0 as its arguement
 		move $a0, $v0
		addi $v0, $zero, 0
		jal recursion	
		
		sw $v0, 0($sp) 
		lw $a0, 0($sp)
		li $v0, 1	 
		syscall	
		
		j END		


recursion:	addi $sp, $sp, -12	# creates space 
		sw $ra, 8($sp)  #stores return addy
		
		addi $t0, $zero, 10
		bne $t0, $a0, not_ten
		addi $v0, $v0, 2 
		
		j fin_rec
			
not_ten:	addi $t0, $zero, 11 
		bne $t0, $a0, not_eleven
		addi $v0, $v0, 1
		
		j fin_rec		

not_eleven:	sw $a0, 4($sp) 	
		addi $a0, $a0, 2 #m+2
		jal recursion	#does the recursion
		
		lw $a0, 4($sp)   
		addi $a0, $a0, 1 #m+1
		jal recursion	#does the recursion
		
		lw $a0, 4($sp) 
		add $v0, $v0, $a0 #does recursion(m + 2) + m + recursion(m + 1) 
		
		j fin_rec
		
fin_rec:	
		lw $ra, 8($sp) 	
		addi $sp, $sp, 12	
		jr $ra

END:		addi $sp, $sp 4	
		li $v0, 10 
		syscall