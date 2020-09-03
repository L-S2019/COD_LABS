.data

name: .asciiz "ENTER YOUR NAME: "
age: .asciiz "Enter your age as well: "
welcome: .asciiz "***Welcome "
ur: .asciiz " ! you are "
years: .asciiz " years old now. Stay blessed***"

varname: .space 32

.text
.globl main
.ent main
main:


#diplay text
li $v0,4
la $a0,name
syscall

#take string input

li $v0, 8
la $a0,varname
li $a1,32
syscall

move $t0,$v0

#diplay text
li $v0,4
la $a0,age
syscall


#integer input for age
li $v0,5
syscall

#save age
move $t1,$v0


#display welcome
li $v0,4
la $a0,welcome
syscall

#display name
li $v0,4
la $a0,varname
syscall

#display ur
li $v0,4
la $a0,ur
syscall

#display age
li $v0,1
move $a0,$t1
syscall

#display years
li $v0,4
la $a0,years
syscall

jr $ra


.end main