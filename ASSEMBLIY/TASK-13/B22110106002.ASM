.model small
.stack 100h
.data

    first db 'MOIZ$'
    second db 'ANAS$'
    result1 db 'EQUAL$'
    result2 db 'NOT EQUAL$'

.code
Main proc

    mov ax,@data
    mov ds,ax

    lea si, first    
    lea di, second   

CompareLoop:
    mov al, [si]     
    mov bl, [di]     
    cmp al, bl       
    jne NotEqual     
    cmp al, '$'      
    je Equal         

    inc si           
    inc di           
    jmp CompareLoop  

NotEqual:
    mov dx, offset result2
    mov ah, 9
    int 21h
    jmp ExitProgram

Equal:
    mov dx, offset result1
    mov ah, 9
    int 21h

ExitProgram:
    mov ah, 4Ch
    int 21h

Main endp
End Main