.model small
.stack 100h
.data

    array db 'a','b','c','d','e'

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si,offset array
    mov cx , 5

    l1:
        mov dx,[si]
        mov ah,2
        int 21h
        inc si
    loop l1

    mov ah,4ch
    int 21h

Main endp
End Main
