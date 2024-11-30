.model small
.stack 100h

.data

.code
main proc
    ; Draw Triangle (equilateral shape)
    ; Top vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 5
    mov cl, 10
    mov dh, 5
    mov dl, 10
    int 10h

    ; Middle left vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 6
    mov cl, 9
    mov dh, 6
    mov dl, 11
    int 10h

    ; Middle right vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 7
    mov cl, 8
    mov dh, 7
    mov dl, 12
    int 10h

    ; Bottom left vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 8
    mov cl, 7
    mov dh, 8
    mov dl, 13
    int 10h

    ; Bottom right vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 9
    mov cl, 6
    mov dh, 9
    mov dl, 14
    int 10h

    ; Draw Diamond (Center-aligned with Triangle)
    ; Top vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 12
    mov cl, 10
    mov dh, 12
    mov dl, 10
    int 10h

    ; Middle left vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 13
    mov cl, 9
    mov dh, 13
    mov dl, 11
    int 10h

    ; Middle right vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 14
    mov cl, 8
    mov dh, 14
    mov dl, 12
    int 10h

    ; Bottom left vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 15
    mov cl, 7
    mov dh, 15
    mov dl, 13
    int 10h

    ; Bottom right vertex
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 16
    mov cl, 6
    mov dh, 16
    mov dl, 14
    int 10h

    ; Draw center vertical line of Diamond
    mov ah, 6
    mov al, 10
    mov bh, 0Ch    
    mov ch, 13
    mov cl, 10
    mov dh, 16
    mov dl, 10
    int 10h

    ; Terminate program
    mov ah, 4ch
    int 21h
main endp
end main