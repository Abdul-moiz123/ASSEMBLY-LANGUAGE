; LAB NO : 01
; PROGRAM TO PRINT A SINGLE CHARACTER ON SCREEN
.model small
.stack 100h
.data
.code
Main proc

    mov dl,'A'  
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h

Main endp
End Main


; LAB NO : 02
; PROGRAM TO PRINT NAME ON SCREEN
.model small
.stack 100h
.data
.code
Main proc

    mov dl , 'M'
    mov ah,2
    int 21h
    
    mov dl , 'O'
    mov ah,2
    int 21h

    mov dl , 'I'
    mov ah,2
    int 21h
    
    mov dl , 'Z'
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
Main endp
End Main