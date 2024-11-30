.model small
.stack 100h
.data
.code
main proc

    ; mov dl,'M'
    ; mov ah,2
    ; int 21h
    
    ; mov dl,'O'
    ; mov ah,2
    ; int 21h
    
    ; mov dl,'I'
    ; mov ah,2
    ; int 21h
    
    ; mov dl,'Z'
    ; mov ah,2
    ; int 21h


    ; mov al,3
    ; add al,30h
    ; mov dl,al
    ; mov ah,2
    ; int 21h

    ; mov ah,1
    ; int 21h
    ; add al,30h
    ; mov dl,al
    ; mov ah,8
    ; int 21h

    ; mov ah,1
    ; int 21h
    ; mov dl,al
    ; mov ah,8
    ; int 21h

;########################################################################




    mov ah,4ch
    int 21h


main endp
end main