.data

cTemp: .word 85
fTemp: .word 0
res: .asciiz "The temperature in Farenheit is: "

#code text
.text
.globl main
.ent main
main:

#define main

	##########################
	la $s0, cTemp
	lw $t0, 0($s0)
	
	##mul by 9
	li $t1, 9
	mult $t0, $t1
	mflo $t0 # load product in t0
	
	##div by 5
	li $t1, 5
	div $t0, $t1
	mflo $t0 # moves quotient in t0

	#add 32
	addi $t0,$t0, 32
		
	###################
	
	
	#display text1
	li $v0,4 # string display code is 4
	la $a0, res # load addr of output string
	syscall # to display text

	#display fareheit
	li $v0,1 # to display int
	move $a0, $t0 # move result to a0 for output display
	syscall # to display result

	#######################

	#return
	end: jr $ra

################## 
.end main 