;Jared Soltas WB26170
;Checks if the computer can block the player from 
;winning horizontal, vertical, or diagonal.

extern printf

    section .data
three:          db  3
four:           db  4
count:          db  0
zero:           db  0   
position:       db  1 
    
    section .text

    global blockMove

;Calls the 3 subroutines to check if the player can 
;win horizontal, vetical, or diagonal.
blockMove:
    ;Calls horiztonal checking subroutine.
    ;Calls blockFound if anything except 0 is returned.
    mov     r13, r15
    mov     r8, [four]
    call    checkHoriz
    cmp     al, [zero]
    jne     blockFound

    ;Calls vertical checking subroutine.
    ;Calls blockFound if anything except 0 is returned.
    mov     r15, r13
    mov     [count], byte 0
    mov     [position], byte 1
    call    checkVert
    cmp     al, [zero]
    jne     blockFound

    ;Calls diagonal checking subroutine.
    ;Calls blockFound if anything except 0 is returned.
    mov     r15, r13
    mov     r9, 20
    mov     r10, 5
    mov     [count], byte 0
    mov     [position], byte 1
    call    checkDiag
    cmp     al, [zero]
    jne     blockFound

    mov     rax, 0
    ret
    
;Loops down to the next row.
horizLoop:
    add     [count], byte 1
    cmp     r8b, [count]
    je      noBlock
    add     r15, 4
    add     [position], byte 1

;Checks if the player has 3 in a row and is about to win horizontally. 
;Adds up all characters in that row and if it perfectly divides to 3
;then return the position where the computer needs to block. The place 
;needing to be block will always be 0. r14 holds the character of the player. 
checkHoriz:
    xor     r12, r12
    xor     rax, rax
    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, 4
    add     [position], byte 1

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, 4
    add     [position], byte 1

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, 4
    add     [position], byte 1

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock

    ;Loops to the next row if that row is
    ;not perfectly divisible.  
    xor     rdx, rdx 
    div     r14
    cmp     al, [three]
    jne     horizLoop
    cmp     dl, [zero]
    jne     horizLoop

    mov     rax, r12
    ret

;Loops to the next column.
vertLoop:
    add     [count], byte 1
    cmp     r8b, [count]
    je      noBlock 

    xor     rax, rax
    mov     al, [count]
    mul     byte [four]
    mov     r15, r13
    add     r15, rax
    mov     [position], byte 1
    mov     r10, [count]
    add     [position], r10b 

;Checks if the player has 3 in a column and is about to win vertically. 
;Adds up all characters in that column and if it perfectly divides to 3
;then return the position where the computer needs to block. The place 
;needing to be block will always be 0. r14 holds the character of the player. 
checkVert:
    xor     r12, r12
    xor     rax, rax
    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, 16
    add     [position], byte 4

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, 16
    add     [position], byte 4

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, 16
    add     [position], byte 4

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    xor     rdx, rdx 
    div     r14

    ;Loops to the next columns if that column is
    ;not perfectly divisible.  
    cmp     al, [three]
    jne     vertLoop
    cmp     dl, [zero]
    jne     vertLoop

    mov     rax, r12
    ret

;Loops to the next diagonal.
diagLoop:
    add     [count], byte 1
    mov     r8, 2
    cmp     r8b, [count]
    je      noBlock
    mov     r9, 12 
    mov     r10, 3
    mov     r15, r13
    add     r15, 12
    mov     [position], byte 4

;Checks if the player has 3 in a diagonal and is about to win diagonally. 
;Adds up all characters in that diagonal and if it perfectly divides to 3
;then return the position where the computer needs to block. The place 
;needing to be block will always be 0. r14 holds the character of the player. 
checkDiag:
    xor     r12, r12
    xor     rax, rax
    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, r9
    add     [position], r10

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, r9
    add     [position], r10

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    add     r15, r9
    add     [position], r10

    add     ax, [r15]
    xor     r11, r11
    mov     r11w, [r15]
    call    findBlock
    xor     rdx, rdx 
    div     r14

    ;Loops to the next diagonal if it's
    ;not perfectly divisible. 
    cmp     al, [three]
    jne     diagLoop
    cmp     dl, [zero]
    jne     diagLoop

    mov     rax, r12
    ret

;If no block is possible.
noBlock:
    mov     [position], byte 1
    mov     [count], byte 0
    mov     rax, 0
    ret

;If the user has 3 pieces and is about to win, and
;an empty spot 0 is found. Returns that spot back to compHard.
blockFound:
    mov     [position], byte 1
    mov     [count], byte 0
    ret

;Checks if the spot is a 0, meaning it is a potential candidate
;for being blocked. Calls storePosition to store that spot. 
findBlock:
    cmp     r11b, [zero]
    je      storePosition
    ret

storePosition:
    mov     r12b, [position]
    ret
