.model small
.stack 100h
.data
    num1 db 2
    num2 db 2
    result db 0
.code
Main proc

    mov ax, @data
    mov ds, ax

    mov al, num1
    mov bl, num2
    
    add al, bl

    mov result, al
    
    mov al, result
    add al, 30h  
    mov dl, al   
    mov ah, 2    
    int 21h      

    mov ah, 4Ch
    int 21h

Main endp
end Main
