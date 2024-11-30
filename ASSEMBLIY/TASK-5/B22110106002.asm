.model small
.stack 100h
.data
.code
Main proc

    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, al

    mov ah, 1
    int 21h
    sub al, 30h

    add al, bl  ;  add the both input value

    add al, 30h ; add '0' to dipaly on screen
    
    
    mov dl, al
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h

Main endp
end Main
