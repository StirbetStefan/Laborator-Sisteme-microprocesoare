.data

.text
__start:
citire_n:geti $a0#citesc n de la tastatura si verific sa fie pozitiv
move $t3,$a0 #salvam n
bltz $a0,citire_n #n <- #a0
jal factorial #call fact(n)
move $t1,$t0 #salvam n!
citire_k:geti $a0 #citesc k de la tastatura si verific sa fie pozitiv
move $t4,$a0 #salvam k
#bgt $t4,$t3,citire_k
bltz $a0,citire_k 
jal factorial
move $t2,$t0 #salvam k!
sub $t5,$t3,$t4	#t5 <- n-k
move $a0,$t5
jal factorial
move $t6,$a0 #salvam (n-k)!
mul $t6,$t6,$t2
div $t1,$t6
mflo $t7
puti $t7
done


factorial:
sw $ra,($sp)	# push $ra
addi $sp,$sp,-4
li $t0,1
multiply:beqz $a0, fin
mul $t0,$t0,$a0
addi $a0,$a0,-1
j multiply
fin:addi $sp,$sp,4
lw $ra,($sp)	#pop $ra
jr $ra 			#return
