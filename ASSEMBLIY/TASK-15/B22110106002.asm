.model small
.stack 100h
.data
.code
Main proc

    mov al,5
    mov bl,9
    mul bl
    AAM

    mov ch,ah
    mov cl,al

    mov dl,ch
    add dl,30h
    mov ah,2
    int 21h
    
    mov dl,cl
    add dl,30h
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h

Main endp
End Main