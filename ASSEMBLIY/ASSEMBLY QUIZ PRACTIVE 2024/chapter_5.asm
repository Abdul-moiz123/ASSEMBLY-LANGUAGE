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

;##############################
    mov dx,10
    mov ah,2
    int 21h

    mov dx,13
    mov ah,2
    int 21h

;##############################
    mov cx,26
    mov dx,65

    Loop1:
        mov ah,2
        int 21h  
        inc dx 
    Loop Loop1    
;##############################


    mov ah,4ch
    int 21h

Main endp
End Main
