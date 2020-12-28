;Jared Soltas WB26170
;Generates a random number for the computer to use on the board.	
	
	section .data
rand_num1:		dq	1103515245
rand_num2:		dq	12345
rand_num3:		dq	65536
mod_num:		dq	16

	section .text

	global randomNum

randomNum:
	push 	r13
	push 	r14
	push 	r15

	rdrand	r13
	mov	rax, [rand_num1]
	mul	r13
	add	rax, [rand_num2]
	mov	r14, [rand_num3]
	xor	rdx, rdx
	div	r14
	mov	r15, [mod_num]
	xor	rdx, rdx
	div	r15
	mov	rax, rdx
	inc	rax

	pop 	r15
	pop 	r14
	pop 	r13
	ret
