; LAB NO 13
; PROGRAM TO PRINT ARRAY WITH THE HELP OF LOOP
.model small
.stack 100h
.data

    array db 'A','B','D','U','L','M','O','I','Z'

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si , offset array
    mov cx , 9

    L1:
        mov dx,[si]
        mov ah,2
        int 21h
        inc si
    loop L1

    mov ah,4ch
    int 21h

Main endp
End Main


; LAB NO 14
; PROGRAM TO INPUT STRING AND PRINT ON SCREEN
.model small
.stack 100h
.data

    var1 db 100 dup('$')

.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si,offset var1

    L1:
        mov ah,1
        int 21h
        cmp al,13  ; check if the user press enter 
        je programmend ; if user press enter its goes to programmed to print the result

    mov [si],al 
    inc si 
    jmp L1  

    programmend:
        mov dx,offset var1
        mov ah,9
        int 21h

        mov ah,4ch
        int 21h

Main endp
End Main