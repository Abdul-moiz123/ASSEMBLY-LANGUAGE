print MACRO p1
    mov dx,offset p1
    mov ah,9
    int 21h
ENDM

.model small
.stack 100h
.data

    str1 db 'moiz$'
    str2 db 'anas$'

.code
Main proc

    mov ax,@data
    mov ds,ax

    print str1
    print str2

    mov ah,4ch
    int 21h

Main endp
End Main
