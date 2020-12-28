;Jared Soltas WB26170
;CMSC 313 Project 3
;The .data section contains all 3 prompts shown to the user, a 
;16-bit string of all letter a, and multiple constants used for 
;calculating a random number. The .bss section has the input 
;where the user wants to replace a letter in the string and the 
;random letter used to replace. Starting in main the user is asked 
;to choose a location in the string they want to replace and that number
;is stored in num_input. In the random label the first thing done
;is creating a random letter stored in rand_lett. After that every
;letter in the 16-bit string of all letter a is changed to random letters.
;In the printStr1 label the random string is printed. In the replace
;label the random letter is moved to the location of the user's input.
;Then in the printStr2 label the new modified string is printed.

	section .data
request:	db	"Enter a location in the string you want to replace 1-16:", 10
len_r:		equ	$-request

prompt1:	db	"Here is the original string:", 10
len_p1:		equ	$-prompt1

prompt2:	db	"Here is the string with the updated random letter:", 10
len_p2:		equ	$-prompt2

rand_str:	db	"aaaaaaaaaaaaaaaa", 10
len_rs:		equ	$-rand_str

rand_num1:	dq	1103515245
rand_num2:	dq	12345
rand_num3:	dq	65536
num_max:	dq	26

	section .bss
num_input:	resb	3
rand_lett:	resb	1

	section .text

	global main

main:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, request
	mov	rdx, len_r
	syscall

	mov	rax, 0
	mov	rdi, 0
	mov	rsi, num_input
	mov	rdx, 3
	syscall	
		
		
random:
	;Creates a random letter and stores it in rand_lett
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	add	rdx, 65
	mov	[rand_lett], rdx
	
	;Remainder of the random label will change each a in 
	;rand_str and make them random letters. Uses the 
	;pseudorandom formula given in the project 3 document
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	mov	r15, rand_str
	add	[r15], rdx
	
	;Randomizes 2nd letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 3rd letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 4th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 5th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 6th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 7th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 8th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 9th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 10th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 11th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 12th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 13th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 14th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 15th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx
	
	;Randomizes 16th letter
	rdrand  r12
	mov	rax, [rand_num1]
	mul	r12
	add	rax, [rand_num2]
	mov	r13, [rand_num3]
	xor	rdx, rdx
	div	r13
	mov	r14, [num_max]
	xor	rdx, rdx
	div	r14
	inc	r15
	add	[r15], rdx	
		 


printStr1:		 
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, prompt1
	mov	rdx, len_p1
	syscall
	
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, rand_str
	mov	rdx, len_rs
	syscall
		

replace:
	;Calculates the tens place digit of the user's input
	mov	r8, num_input
	xor	r9, r9
	mov	r9b, [r8]
	sub	r9, 48
    imul	r9, 10

	;Calculates the ones place digit of the user's input
	;and adds it to the tens place
	inc	r8
	xor	r10, r10
	mov	r10b, [r8]
	sub	r10, 48
	add	r10, r9
	dec	r10

	;Replaces the user's location in the string with 
	;the new random letter
	mov	r8, rand_str
	add	r8, r10
	mov	r11b, [rand_lett]
	mov	[r8], r11b	


printStr2:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, prompt2
	mov	rdx, len_p2
	syscall
	
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, rand_str
	mov	rdx, len_rs
	syscall


exit:
	mov	rax, 60
	xor	rdi, rdi
	syscall
