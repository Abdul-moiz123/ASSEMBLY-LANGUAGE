dosseg
.model small
.stack 100h
.data
    msg1 db 'Enter 6 numbers: $'
    msg2 db 'You entered: $'
    msg3 db 13, 10, 'Sum: $'  ; new line and label for sum
    newline db 13, 10, '$'    ; new line
    sum db 0                  ; to store the sum
.code
main proc
    mov ax, @data             ; initialize data segment
    mov ds, ax

    mov cx, 6                 ; counter for loop
    mov si, offset arr        ; address of array

    ; Prompt for input
    lea dx, msg1
    mov ah, 9
    int 21h

    ; Input loop
loopInput:
    mov ah, 1                 ; input character
    int 21h
    sub al, '0'               ; convert ASCII to integer
    mov [si], al              ; store input in array
    inc si                    ; move to next array element
    loop loopInput

    ; New line
    lea dx, newline
    mov ah, 9
    int 21h

    ; Display entered numbers
    mov si, offset arr
    lea dx, msg2
    mov ah, 9
    int 21h

    mov cx, 6                 ; reset counter
loopOutput:
    mov al, [si]
    add al, '0'               ; convert integer to ASCII
    mov dl, al
    mov ah, 2
    int 21h
    inc si
    loop loopOutput

    ; New line
    lea dx, newline
    mov ah, 9
    int 21h

    ; Calculate sum
    mov si, offset arr
    xor al, al                ; clear AL register (will hold sum)
    mov cl, 6                 ; counter for sum loop
loopSum:
    add al, [si]
    inc si
    loop loopSum
    mov sum, al               ; store the sum

    ; Display sum
    lea dx, msg3
    mov ah, 9
    int 21h

    mov al, sum
    add al, '0'               ; convert sum to ASCII
    mov dl, al
    mov ah, 2
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h
main endp
end main
