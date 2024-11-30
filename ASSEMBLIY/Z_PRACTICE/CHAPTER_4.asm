; LAB NO 12
; PROGRAM TO CHECK NUMBER IS EQUAL TO OR NOT EQUAL TO
.model small
.stack 100h
.data

    message_one db "NUMBERS ARE EQUAL$"
    message_two db "NUMBERS ARE NOT EQUAL$"

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov dl,'5'

    mov ah,1
    int 21h
    cmp al,dl

    jmp NEXTLINE
    je EQUAL
    jne NOTEQUAL

    NOTEQUAL:
        mov dx , offset message_two
        mov ah,9
        int 21h
        jmp END

    NEXTLINE:
        mov dx,10
        mov ah,2 
        int 21h

        mov dx ,13
        mov ah,2
        int 21h    
        
    EQUAL:
        mov dx,offset message_one
        mov ah,9
        int 21h
        jmp END

    END:
        mov ah,4ch
        int 21h    

Main endp
End Main
