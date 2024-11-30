.model small
.stack 100h
.data
.code  
main proc
    ; Draw Square 1 (Top-left)
    mov ah, 6
    mov al, 10
    mov bh,00010000b
    mov ch, 5
    mov cl, 5
    mov dh, 10
    mov dl, 10
    int 10h

    ; Draw Rectangle 1 (Right of Square 1)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 5
    mov cl, 11
    mov dh, 10
    mov dl, 15
    int 10h

    ; Draw Square 2 (Below Square 1)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 11
    mov cl, 5
    mov dh, 16
    mov dl, 10
    int 10h

    ; Draw Rectangle 2 (Below Rectangle 1)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 11
    mov cl, 11
    mov dh, 16
    mov dl, 15
    int 10h

    ; Draw Parallelogram (Diagonal connection between squares)
    ; First region (Top-left)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 7
    mov cl, 6
    mov dh, 7
    mov dl, 11
    int 10h

    ; Second region (shifted)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 8
    mov cl, 7
    mov dh, 8
    mov dl, 12
    int 10h

    ; Third region (further shifted)
    mov ah, 6
    mov al, 10
    mov bh, 04h
    mov ch, 9
    mov cl, 8
    mov dh, 9
    mov dl, 13
    int 10h

    ; Fourth region (bottom row of parallelogram)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 10
    mov cl, 9
    mov dh, 10
    mov dl, 14
    int 10h

    ; Terminate program
    mov ah, 4ch
    int 21h
main endp
end main