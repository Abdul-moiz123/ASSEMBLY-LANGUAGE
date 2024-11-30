; LAB NO 16
; PROGRAM TO SWAP TWO STRING 
.model small
.stack 100h
.data

    first db 'ABDUL$'
    second db 'MOIZ$'

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov cx , offset first
    push cx

    mov bx , offset second
    push bx

    pop cx   
    pop bx 

    mov dx,cx
    mov ah,9
    int 21h

    mov dx,10
    mov ah,2
    int 21h

    mov dx,13
    mov ah,2
    int 21h

    mov dx,bx
    mov ah,9
    int 21h

    mov ah,4ch
    int 21h   

Main endp
End Main


; LAB NO 17
; PROGRAM TO REVERSE THE STRING 
.model small
.stack 100h
.data

    first db 'MOIZ$'

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si , offset first

    mov cx , 4

    INPUT: 
        mov bx,[si]
        push bx
        inc si
    loop INPUT

    mov cx,4

    OUTPUT:
        pop dx
        mov ah,2
        int 21h
    loop OUTPUT

    mov ah,4ch
    int 21h    

Main endp
End Main


; LAB NO 18
; PROGRAM TO SWAP FIRST AND LAST NAME 
.model small
.stack 100h
.data
.code
Main proc

    mov ax , 1       ; number cant be place as variable
    push ax

    mov bx , 2
    push bx

    pop ax
    pop bx

    add ax , 30h
    mov dx,ax
    mov ah,2
    int 21h

    add bx , 30h
    mov dx,bx
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
    
Main endp
End Main