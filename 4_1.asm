.data
first_int: .asciiz "Enter first integer: "
Sec_int: .asciiz "Enter second integer:"
product: .asciiz "Product is "


.text
.globl main
.ent main
main:

#display string
li $v0,4
la $a0,first_int
syscall

#take first integer
li $v0,5
syscall
move $t0,$v0


#display string
li $v0,4
la $a0,Sec_int
syscall

#take second integer
li $v0,5
syscall
move $t1,$v0

mult $t0,$t1
mflo $10


#display string
li $v0,4
la $a0,product
syscall



li $v0,1
move $a0,$10
syscall

#jr $ra

li $v0,10
syscall
.end main
