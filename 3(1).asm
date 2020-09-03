#Addition

.data

.text
.globl main

main:

li $9,10
li $10,3
add $11,$9,$10
sub $12,$9,$10
sll $13,$12,1
sll $13,$12,2

li $v0, 10
syscall

#7<<2=7* 2^2=7*4