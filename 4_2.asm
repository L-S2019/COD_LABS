.data
dividend: .asciiz "Enter Dividend: "
divisor: .asciiz "Enter Divisor: "
quo: .asciiz "Quotient is  "
And: .asciiz " and "
Rem: .asciiz "Remainder is  "

.text
.globl main
.ent main
main:

#display 1
li $v0,4
la $a0,dividend
syscall


#take integer 1
li $v0,5
syscall
move $t0,$v0

#display 2
li $v0,4
la $a0,divisor
syscall


#take  integer 2
li $v0,5
syscall
move $t1,$v0

div $t0,$t1
mfhi $t2
mflo $t3




#display 2
li $v0,4
la $a0,quo
syscall

#print quotient
li $v0,1
move $a0,$t3
syscall

#display 2
li $v0,4
la $a0,And
syscall

#display 2
li $v0,4
la $a0,Rem
syscall

#print remainder
li $v0,1
move $a0,$t2
syscall

jr $ra
.end main

