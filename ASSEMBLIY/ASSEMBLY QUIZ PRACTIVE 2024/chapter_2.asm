.model small 
.stack 100h 
.data 
.code 
main proc 

    ; mov al,5
    ; mov bl,4
    ; add al,bl
    ; add al,30h
    ; mov dl,al
    ; mov ah,2
    ; int 21h

    ; mov al,5
    ; mov bl,4
    ; sub al,bl
    ; add al,30h
    ; mov dl,al
    ; mov ah,2
    ; int 21h
    

    ; mov ah,1
    ; int 21h
    ; sub al,30h
    ; mov bl,al
    ; mov ah,1
    ; int 21h
    ; sub al,30h
    ; add al,bl
    ; add al,30h
    ; mov dl,al
    ; mov ah,2
    ; int 21h
    ; mov ah,4ch 
    ; int 21h


    ; mov ah,1
    ; int 21h
    ; sub al,30h
    ; mov bl,al
    ; mov ah,1
    ; int 21h
    ; sub al,30h
    ; mov cl,al
    ; mov al,bl
    ; sub al,cl
    ; add al,30h
    ; mov dl,al
    ; mov ah,2
    ; int 21h
    ; mov ah,4ch 
    ; int 21h


main endp 
end main