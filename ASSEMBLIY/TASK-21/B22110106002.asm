;program to draw rectangle
.model small
.stack 100h
.data
.code
main proc
mov ah, 6
mov al, 10
mov bh, 00010000b
mov ch, 0
mov cl, 0
mov dh, 15
mov dl, 15
int 10h
mov ah, 4ch
int 21h
main endp
end main

;program to draw sqaure
.model small
.stack 100h
.data
.code  
main proc
    mov ah, 6
    mov al, 6
    mov bh, 00010000b
    mov ch, 5
    mov cl, 5
    mov dh, 15
    mov dl, 15
    int 10h

    mov ah, 4ch
    int 21h
main endp
end main


;program to draw parallelogram.
.model small
.stack 100h
.data
.code  
main proc
    ; First region (Top-left)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 5
    mov cl, 8
    mov dh, 5
    mov dl, 15
    int 10h

    ; Second region (Bottom-right, shifted to simulate a slant)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 6
    mov cl, 7
    mov dh, 6
    mov dl, 14
    int 10h

    ; Third region (Further shifted)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 7
    mov cl, 6
    mov dh, 7
    mov dl, 13
    int 10h

    ; Fourth region (Bottom row)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 8
    mov cl, 5
    mov dh, 8
    mov dl, 12
    int 10h

    mov ah, 4ch
    int 21h
main endp
end main