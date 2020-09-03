.data
num: .asciiz "Enter your positive integer n: "
sum: .asciiz "Sum is "
.text
.globl main
.ent main
main:

li $v0,4
la $a0,num
syscall
li $v0,5
syscall
move $t0,$v0



#t1
li $t1,0

#t2
li $t2,1

#check if $t0==$t1
Loop:
sub $t3,$t2,$t0
bgtz $t3,End
add $t1,$t1,$t2
addi $t2,$t2,1
j Loop


End:

li $v0,4
la $a0,sum
syscall

li $v0,1
move $a0,$t1
syscall

li $v0,10
syscall