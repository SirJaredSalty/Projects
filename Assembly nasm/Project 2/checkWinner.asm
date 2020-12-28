;Jared Soltas WB26170
;Checks for a winner by horizontal, vertical, or diagonal.     

    section .data
player_win:     db  10, "You won!", 10, 10
len_pw          equ $-player_win

comp_win:       db  10, "The computer won!", 10, 10
len_cw          equ $-comp_win

winner:         db  1
player:         db  88
four:           db  4
count:          db  0
zero:           db  0 
    
    section .text

    global checkWinner

;Calls the 3 subroutines to check if there's a winner
;horizontal, vetical, or diagonal.
checkWinner:
    ;Calls horiztonal checking subroutine.
    ;Calls playerWin if a 1 is returned.
    mov     r13, r15
    mov     r8, [four]
    call    checkHoriz
    cmp     al, [winner]
    je      playerWin

    ;Calls vertical checking subroutine.
    ;Calls playerWin if a 1 is returned.
    mov     r15, r13
    mov     [count], byte 0
    call    checkVert
    cmp     al, [winner]
    je      playerWin

    ;Calls diagonal checking subroutine.
    ;Calls playerWin if a 1 is returned.
    mov     r15, r13
    mov     r9, 20
    mov     [count], byte 0
    call    checkDiag
    cmp     al, [winner]
    je      playerWin

    jmp     noWinner
    
;Loops down to the next row.
horizLoop:
    add     [count], byte 1
    cmp     r8b, [count]
    je      noWinner 
    add     r15, 4

;Checks if there is a winner horizontally. Adds up all
;characters in that row and if it perfectly divides to 4
;then the one making the move won. r14 holds the character
;of the whoever is making the current move. 
checkHoriz:
    xor     rax, rax
    add     ax, [r15]
    add     r15, 4
    add     ax, [r15]
    add     r15, 4
    add     ax, [r15]
    add     r15, 4
    add     ax, [r15]
    xor     rdx, rdx 
    div     r14

    ;Loops to the next row if that row is
    ;not perfectly divisible.  
    cmp     al, [four]
    jne     horizLoop
    cmp     dl, [zero]
    jne     horizLoop

    mov     rax, 1
    ret

;Loops to the next column.
vertLoop:
    add     [count], byte 1
    cmp     r8b, [count]
    je      noWinner 

    xor     rax, rax
    mov     al, [count]
    mul     byte [four]
    mov     r15, r13
    add     r15, rax

;Checks if there is a winner vertically. Adds up all
;characters in that column and if it perfectly divides to 4
;then the one making the move won. r14 holds the character
;of the whoever is making the current move. 
checkVert:
    xor     rax, rax
    add     ax, [r15]
    add     r15, 16
    add     ax, [r15]
    add     r15, 16
    add     ax, [r15]
    add     r15, 16
    add     ax, [r15]
    xor     rdx, rdx 
    div     r14

    ;Loops to the next column if that 
    ;column is not perfectly divisible.
    cmp     al, [four]
    jne     vertLoop
    cmp     dl, [zero]
    jne     vertLoop

    mov     rax, 1
    ret

;Goes to the other diagonal on the board.
diagLoop:
    add     [count], byte 1
    mov     r8, 2
    cmp     r8b, [count]
    je      noWinner
    mov     r9, 12 
    mov     r15, r13
    add     r15, 12

;Checks if there is a winner diagonally. Adds up all
;characters in that diagonal and if it perfectly divides to 4
;then the one making the move won. r14 holds the character
;of the whoever is making the current move. 
checkDiag:
    xor     rax, rax
    add     ax, [r15]
    add     r15, r9
    add     ax, [r15]
    add     r15, r9
    add     ax, [r15]
    add     r15, r9
    add     ax, [r15]
    xor     rdx, rdx 
    div     r14

    ;Goes to the other diagonal if not
    ;perfectly divisible to 4.
    cmp     al, [four]
    jne     diagLoop
    cmp     dl, [zero]
    jne     diagLoop

    mov     rax, 1
    ret

;Returns 0 if there is no winner
noWinner:
    mov     [count], byte 0
    mov     rax, 0
    ret

;If the player or computer won. 
playerWin:
    ;If computer won go to computerWin subroutine.
    mov     [count], byte 0
    cmp     r14b, [player]
    jne     computerWin

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, player_win
    mov     rdx, len_pw
    syscall
    mov     rax, 1
    ret

computerWin:
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, comp_win
    mov     rdx, len_cw
    syscall
    mov     rax, 1
    ret
