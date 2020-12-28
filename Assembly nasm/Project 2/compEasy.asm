;Jared Soltas WB26170
;Gets the user's input and a random number for the 
;computer's move. The computer will not try to block
;the user's move if they are about to win.

extern scanf
extern randomNum
extern checkWinner
extern drawBoard

    section .data
select:         db  10, "Select a location 1-16 that isn't taken:", 10
len_s:          equ $-select

tie:            db  10, "It's a tie!", 10, 10
len_t:          equ $-tie

moves:          dd  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
player:         db  88
computer:       db  79
fmt:            dq  "%d", 0

max_moves:      db  16
curr_round:     db  0
winner:         db  1
zero:           db  0

    section .bss
num_in:         resq    2

    section .text

    global compEasy

;Gets the user's input
compEasy:
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, select
    mov     rdx, len_s
    syscall

    mov     rdi, fmt
    mov     rsi, num_in
    mov     rax, 0
    call    scanf

    ;Error input checking > 16.
    mov     r8, [max_moves]
    cmp     r8b, [num_in]
    js      compEasy

    ;Error input checking < 1.
    mov     r8, 0
    cmp     r8b, [num_in]
    jnl     compEasy

    ;Checks if the spot is already taken
    ;and prints the board.
    xor     r14, r14
    mov     r14b, [player]
    mov     r15, moves
    call    findSpot 
    cmp     [zero], al
    je      compEasy

    ;Checks if the user won and resets
    ;the board to empty if user won.
    mov     r15, moves
    call    checkWinner
    mov     r15, moves
    cmp     al, [winner]
    je      resetBoard

    ;Increments the current round.
    add     [curr_round], byte 1   

;Gets the computer's input
compMove:
    ;Gets a random number and checks
    ;that it isn't already used.
    call    randomNum
    mov     [num_in], al
    xor     r14, r14
    mov     r14b, [computer]
    mov     r15, moves
    call    findSpot
    cmp     [zero], al
    je      compMove
    
    ;Checks if the computer won and
    ;resets the board to empty if it did. 
    mov     r15, moves
    call    checkWinner
    mov     r15, moves
    cmp     al, [winner]
    je      resetBoard

    ;Increments the current round and
    ;checks if the board is full.
    add     [curr_round], byte 1
    mov     r8, [max_moves]
    cmp     r8b, [curr_round]
    jne     compEasy

    ;Resets the board if a tie occured.
    mov     r15, moves
    call    resetBoard

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, tie
    mov     rdx, len_t
    syscall
    ret

;Goes to the spot on the board that the 
;user or computer chose. Once found it
;calls findRepeat.
findSpot:
    sub     [num_in], byte 1
    je      findRepeat
    add     r15, 4
    jmp     findSpot

;Decides if that spot on the board is
;already taken by a piece. Calls placePiece
;if the chosen spot is not taken.
findRepeat:
    mov     r13, [zero]
    cmp     [r15], r13b
    je      placePiece
    mov     rax, 0
    ret

;Places the piece on the board and
;prints the new board.
placePiece:
    mov     [r15], r14b
    mov     rdi, moves
    call    drawBoard
    mov     rax, 1
    ret

;Resets the board by placing all 0's
;in the array.
resetBoard:
    mov     [r15], byte 0
    add     r15, 4
    sub     [max_moves], byte 1
    jnz     resetBoard
    mov     [max_moves], byte 16
    mov     [curr_round], byte 0
    ret


