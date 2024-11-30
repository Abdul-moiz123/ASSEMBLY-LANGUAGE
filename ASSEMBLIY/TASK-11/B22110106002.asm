.model small
.stack 100h
.data
    first db 'ABDUL$'
    second db 'MOIZ$'
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov ax, offset first
    push ax

    mov bx, offset second
    push bx

    pop ax
    pop bx

    mov dx, ax
    mov ah, 9
    int 21h

    mov dx,10
    mov ah,2
    int 21h

    mov dx,13
    mov ah,2
    int 21h

    mov dx, bx
    mov ah, 9
    int 21h

    mov ah,4ch
    int 21h

Main endp
End Main
