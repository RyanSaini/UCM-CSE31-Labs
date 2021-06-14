.data
x:		.word 5
y:		.word 10
p: 		.word 0
q: 		.word 0

		.text
		
MAIN:		la $t0, x
		lw $s0, 0($t0)	# s0 = x
		la $t0, y
		lw $s1, 0($t0) 	# s1 = y
		
		add $a0, $zero, $s0	#x
      		add $a1, $zero, $s1	#y
      		jal SUM
      		add $s1, $a0, $a1
		add $a0, $s1, $v0
		li $v0, 1		 
		syscall	
		j END


SUM:		
		addi $t0, $a0, 1
		addi $t1, $a1, 1
		jal SUB
		la $t0, p
		lw $s0, 0($t0)
		add $s0, $s0, $v0
		
		subi $t0, $a1, 1
		subi $t1, $a0, 1
		jal SUB 
		la $t0, q
		lw $s1, 0($t0)
		add $s1, $s1, $v0	
		add $v0, $s0, $s1
		
		addi $ra, $zero, 4194340
		jr $ra
		
		
SUB:		sub $v0, $t0, $t1 #b-a
		jr $ra
      		     		
END:		 
		li 	$v0, 10
		syscall
      		
      		
