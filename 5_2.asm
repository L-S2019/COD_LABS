.data
tem: .asciiz "Enter temperature of the day: "
hot: .asciiz "It is hot today"
pleas: .asciiz "Pleasant weather"
cold: .asciiz "It is cold today"



.text
.globl main
.ent main
main:
li $v0,4
la $a0,tem
syscall

li $v0,5
syscall
move $t0,$v0



li $t1,30  #t1=30
#syscall
sub $t2,$t0,$t1  #t2=t0-t1
blez $t2,elseif  #t2<=0 then elseif
li $v0,4
la $a0,hot       #o.w print hot
syscall
j end

elseif:
slti $8,$t0,21      #t0<21 (1....20) $8=1
bne $8,$0,else      #$8=1 go to else
li $v0,4
la $a0,pleas         #o.w pleasant weather
syscall
j end



else:
li $v0,4
la $a0,cold      #<20 nd <30 then print cold
syscall



end:
li $v0,10
syscall
