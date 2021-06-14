        .data
n:      .word 13
m:	.word 20
str1: .asciiz "I love CSE31!"

        .text
main: 	add     $t0, $0, $zero
		addi    $t1, $zero, 1
		la      $t3, n #Loads address n into register of t3
		lw      $t3, 0($t3) #looks at the address of $t3 plus f=the offset of 0, loads it into $t3. 
		
fib: 	beq     $t3, $0, finish
		add     $t2,$t1,$t0
		move    $t0, $t1
		move    $t1, $t2
		subi    $t3, $t3, 1
		j       fib
		
finish: addi    $a0, $t0, 0
		li      $v0, 1		# you will be asked about what the purpose of this line for syscall 
		syscall
		
		li $v0, 4       # $system call code for print_str
    		la $a0, str1     # $address of string to print
    		syscall         # print the string		
											
		li      $v0, 10		
		syscall	
	
		

