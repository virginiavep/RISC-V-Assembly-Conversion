.globl main
.data
sum: .string "Sum of numbers from 1-100: "
.text
main:
	# 1-100 integer accumulation
	li t0,0
	li t1,0
	li t2,101
loop:
	add t1, t1, t0
	addi t0, t0, 1
	bne t0, t2, loop
	beq t0, t2, done
done:
	la a0, sum
	li a7, 4 
	ecall
	#display with PrintInt(1):
	add a0, zero, t1 
	li a7, 1
	ecall
	#end using Exit2(93):
	li a7, 93
	ecall
