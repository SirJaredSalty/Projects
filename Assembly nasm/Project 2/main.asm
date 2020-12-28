;Jared Soltas WB26170
;File will show the user the main menu and 
;call the subroutine associated with their choice.

extern scanf
extern compEasy
extern compHard

    section .data
welcome:        db  "Welcome to TIC-TAC-ASSEMBLY", 10
len_w:          equ $-welcome

pick:           db  "Pick an option from the menu below:", 10
len_p:          equ $-pick

invalid:        db  "Invalid Input!", 10, 10
len_val:        equ  $-invalid

optionA:        db  "a - Easy", 10
optionB:        db  "b - Hard", 10
optionQ:        db  "q - Quit", 10
len_o:          equ  $-optionQ

num_a:          dq  97
num_b:          dq  98
num_q:          dq  113

fmt:            dq  " %c", 0

    section .bss
menu_in:        resq   2

    section .text

    global main

main:
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, welcome
    mov     rdx, len_w
    syscall

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, pick
    mov     rdx, len_p
    syscall

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, optionA
    mov     rdx, len_o
    syscall

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, optionB
    mov     rdx, len_o
    syscall

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, optionQ
    mov     rdx, len_o
    syscall

    push    rbp
    mov     rdi, fmt
    mov     rsi, menu_in
    mov     rax, 0
    call    scanf
    pop     rbp

    mov     r8, [menu_in]

    cmp     r8, [num_a]
    je      menuA

    cmp     r8, [num_b]
    je      menuB

    cmp     r8, [num_q]
    jz      exit

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, invalid
    mov     rdx, len_val
    syscall

    jmp     main

menuA:
    call    compEasy
    jmp     main

menuB:
    call    compHard
    jmp     main

exit:
    mov	    rax, 60
    xor	    rdi, rdi
    syscall

