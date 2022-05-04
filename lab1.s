.data
	n: 
		.word 10
	numere:
		.word 1,2,3,4,5,6,7,8,9,10
		
.text
	lw $t1, n
	addi $t0, $0, 0  #initializam suma cu 0
	la $t2, numere
	addi $t4, $0, 0 #pentru contor
	adunarea:
		lw $t3, ($t2)
		add $t0, $t0, $t3
		addi $t2, $t2, 4
		addi $t4, $t4, 1
		beq $t1, $t4, 
		
		
	
	
	