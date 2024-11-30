.model small
.stack 100h
.data

    equal_message db 'BOTH NUMBERS ARE EQUALS$'
    not_equal_message db 'BOTH NUMBERS ARE NOT EQUALS$'
    first_number db 'ENTER THE FIRST NUMBER$'
    second_number db 'ENTER THE SECOND NUMBER$'

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov dx,offset first_number
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h
    mov bl,al

    mov dx,offset second_number
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al,30h

    cmp al,bl
    je equal
    jne not_equal

equal:
    mov dx,offset equal_message
    mov ah,9 
    int 21h
    jmp exit

not_equal:
    mov dx,offset not_equal_message
    mov ah,9 
    int 21h
    jmp exit

exit:
    mov ah,4ch
    int 21h 

Main endp
End Main
