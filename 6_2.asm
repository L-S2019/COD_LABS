.data
num: .asciiz "Enter your positive integer n: "
fact: .asciiz "factorial is "


.text
.globl main
.ent main
main:

#n=3

li $v0,4
la $a0,num
syscall
li $v0,5
syscall
move $t5, $v0

#multiply n-1
addi $t1,$t5,-1 #t1=2

Loop:
slti $t2,$t1,1
bne $t2,$0,Exit
multu $t5,$t1
mflo $t0
addi $t1,$t1,-1
j Loop

Exit:
li $v0,4
la $a0,fact
syscall
li $v0,1
move $a0,$t0
syscall

li $v0,10
syscall



