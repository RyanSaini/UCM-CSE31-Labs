.data 
.text

main: 
	add $t0, $s0, $zero
	addi $t1, $0, 1 
	addi $t2, $1, 2
	addi $t3, $2, 3
	addi $t4, $3, 4
	addi $t5, $4, 5
	addi $t6, $5, 6
	addi $t7, $6, 7

	li      $v0, 10		
		syscall	