.model small
.stack 100h
.data

    q db ?               
    r db ?               
    even_msg db 'Even$',0
    odd_msg db 'Odd$',0

.code
Main proc

    mov ax, @data
    mov ds, ax

    mov al, 26
    mov bl, 2
    div bl                
    mov q, al             
    mov r, ah             

    cmp ah, 0
    je even_number        

odd_number:
    mov dx, offset odd_msg
    mov ah, 09h
    int 21h
    jmp Exit

even_number:
    mov dx, offset even_msg
    mov ah, 09h
    int 21h

Exit:
    mov ah, 4Ch
    int 21h

Main endp
End Main