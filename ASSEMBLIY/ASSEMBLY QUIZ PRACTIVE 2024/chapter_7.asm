.model small
.stack 100h
.data

    ; str1 db 'abdul$'
    ; str2 db 'moiz$'

    array db 'm','o','i','z'

.code
Main proc

    mov ax,@data
    mov ds,ax

    ; mov bx,offset str1
    ; push bx
    ; mov cx,offset str2
    ; push cx

    ; pop cx
    ; pop bx

    ; mov dx,bx
    ; mov ah,9
    ; int 21h

    ; mov dx,cx
    ; mov ah,9
    ; int 21h


;###########################

    mov si , offset array
    mov cx,4

    l1:
        mov bx,[si]
        push bx
        inc si
    loop l1

    mov cx,4
    l2:
        pop bx
        mov dx,bx
        mov ah,2 
        int 21h
    loop l2        

    

    mov ah,4ch
    int 21h


Main endp
End Main