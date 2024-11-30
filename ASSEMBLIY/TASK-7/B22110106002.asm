;                       PROGRAM TOPRINT 0 TO 9
.model small
.stack 100h
.data
.code
Main proc

    mov cx,20
    mov dx,48
    
    L1:
        mov ah,2
        int 21h
        Add dx,1
    Loop L1

    mov ah,4ch
    int 21h

Main endp
End Main


;                   PROGRAM TO PRINT CAPITAL LETTER FROM A TO Z USING LOOP
.model small
.stack 100h
.data
.code
Main proc

    mov cx,26 
    mov dx,65 
    L1:
        mov ah,2
        int 21h  
        add dx,1 
    Loop L1    

    mov ah,4ch
    int 21h
    
Main endp
End Main


;                   PROGRAM TO PRINT SMALL LETTER FROM A TO Z USING LOOP
.model small
.stack 100h
.data
.code
Main proc

    mov cx,26
    mov dx,97
    L1:
        mov ah,2
        int 21h  
        add dx,1 
    Loop L1    

    mov ah,4ch
    int 21h
    
Main endp
End Main

