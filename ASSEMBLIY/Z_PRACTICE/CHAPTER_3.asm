; LAB NO 08
; PROGRAM TO PRINT 0 TO 9 WITH THE HELP OF LOOP
.model small
.stack 100h
.data
.code
Main proc

    mov cx ,10
    mov dx,48
    
    L1:
        mov ah,2
        int 21h
        inc dx
    loop L1

   mov ah,4ch
   int 21h

Main endp
End Main


; LAB NO 09
; PROGRAM TO PRINT A TO Z WITH THE HELP OF LOOP
.model small
.stack 100h
.data
.code
Main proc

    mov cx,26  ; works still 26 round
    mov dx,65

    L1:
        mov ah,2
        int 21h
        inc dx
    loop L1    

    mov ah,4ch
    int 21h

Main endp
End Main


; LAB NO 10
; PROGRAM TO PRINT a TO z WITH THE HELP OF LOOP
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
        inc dx
    loop L1

    mov ah,4ch 
    int 21h
       
Main endp
End Main


; LAB NO 11
; PROGRAM FOR (AND) --> (OR) --> (XOR)
.model small
.stack 100h
.data
.code
Main proc

    mov bl,101b
    and bl,110b ; --> and --> or --> xor

    add al,30h

    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h

Main endp
End Main