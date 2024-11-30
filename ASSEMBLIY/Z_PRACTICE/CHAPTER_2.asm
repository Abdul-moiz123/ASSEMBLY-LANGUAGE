; LAB NO : 03
; PROGRAM TO ADD TWO NUMBERS
.model small
.stack 100h
.data
.code
Main proc

    mov al,2
    mov bl,3

    add al,bl
    add al,30h

    mov dl,al
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h

Main endp
End Main


; LAB NO : 04
; PROGRAM TO SUBTRACT TWO NUMBERS
.model small
.stack 100h
.data
.code
Main proc

    mov al,5
    mov bl,3

    sub al,bl
    add al,30h

    mov dl,al
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h

Main endp
End Main


; LAB NO : 05
; PROGRAM TO INPUT TWO NUMBER AND THAN ADD THEM
.model small
.stack 100h
.data
.code
Main proc

    mov ah,1
    int 21h
    sub al,30h
    mov bl,al

    mov ah,1
    int 21h
    sub al,30h

    add al,bl
    add al,30h 

    mov dl,al
    mov ah,2 
    int 21h
    
    mov ah,4ch
    int 21h

Main endp
End Main


; LAB NO : 06
; PROGRAM TO INPUT TWO NUMBER AND THAN SUB THEM
.model small
.stack 100h
.data
.code
Main proc

    mov ah,1
    int 21h
    sub al,30h
    mov bl,al

    mov ah,1
    int 21h
    sub al,30h
    mov cl,al

    sub bl,cl
    mov al,bl
    add al,30h 

    mov dl,al
    mov ah,2 
    int 21h

    mov ah,4ch
    int 21h

Main endp
End Main


; LAB NO : 07
; ANY PROGRAM TO USED VARAIBLE OF YOUR OWN CHOICE
.model small
.stack 100h
.data
    
    var1 db '4' ;you have to convert its inro ascii code
    var2 db '5'

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov al,var1
    sub al,30h
    mov bl,al
    
    mov al,var2
    sub al,30h

    add al,bl
    add al,30h

    mov dl,al
    mov ah,2 
    int 21h

    mov ah,4ch
    int 21h

Main endp
End Main