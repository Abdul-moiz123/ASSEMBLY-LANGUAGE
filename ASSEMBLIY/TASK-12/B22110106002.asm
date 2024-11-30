.model small
.stack 100h
.data

    string db 'moiz$'

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si , offset string
    mov cx,4

    L1:
        mov bx,[si]
        push bx
        inc si
    Loop L1 

    mov cx,4

    L2:
        pop dx
        mov ah,2
        int 21h
    loop L2

    mov ah,4ch
    int 21h
           
Main endp
End Main
