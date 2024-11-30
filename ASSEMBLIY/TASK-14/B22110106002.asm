.model small
.stack 100h
.data

    q db ?
    r db ?

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov ax,27
    mov bl,5
    div bl

    mov q ,al
    mov r ,ah

    mov dl,q
    add dl,30h
    mov ah,2
    int 21h

    mov dl,r
    add dl,30h
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h 

Main endp
End Main