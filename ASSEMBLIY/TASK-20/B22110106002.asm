.model small
.stack 100h
.data

    color1 db 'Red$'
    color2 db 'Green$'
    color3 db 'Blue$'

.code
Main proc

    mov ax, @data
    mov ds, ax

    mov dx, offset color1
    mov ah, 9
    int 21h

    call enterkey

    mov dx, offset color2
    mov ah, 9
    int 21h

    call enterkey

    mov dx, offset color3
    mov ah, 9
    int 21h

    mov ah, 4ch
    int 21h

Main endp

enterkey proc
    mov dx, 10          
    mov ah, 2
    int 21h

    mov dx, 13          
    mov ah, 2
    int 21h

    ret
enterkey endp    

End Main
