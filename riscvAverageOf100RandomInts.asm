.data
array: 
.space 400 #400 bytes- 100 ints in the array
sum:
	.string "Sum of numbers from 1-100: "
	.text
main:
	#two loops: generate 100 random integers; add them together
	li t0, 0 #i 
	li t1, 100 #size
	li t3, 0 #sum
	la t4, array
	#while (i <100)
	#array [i] = randint(0,100)
loop:
	bge t0, t1, exit
	li a0, 0 #random integer
	li a1, 100
	li a7, 42
	ecall
	#store a0 to array[i]
	sw a0, 0(t4) #stores random to array
	addi t4, t4, 4 #increass t4 by 1 integer
	addi t0, t0, 1 #i++
	beq t0, t0, loop 
exit:
	li t0, 0 #i = 0
	la t4, array 
	loop2:
	#sum 
 	beq t0,t1,exit2 
 	lw t6,0(t4) 
 	add t3,t3,t6 
 	addi t4,t4,8 
 	addi t0,t0,1 
 	j loop
exit2:
	li t1, 100
	div t3, t3, t1 #do average
	la a0, sum
	li a7, 4 
	ecall
	#display with PrintInt(1):
	add a0, zero, t3 
	li a7, 1
	ecall
	#end using Exit2(93):
	li a7, 93
	ecall