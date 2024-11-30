.model small 
.stack 100h 
.data 

    variable_one db 3
    variable_two db 4
    variable_three db 5
    
    string_one db 'moiz$'

    num1 db ?

    str1 db 50 dup('$')

.code 
main proc 

    mov ax,@data
    mov ds,ax

;################
    ; mov bl,variable_one
    ; add bl,30h
    ; mov dl,bl
    ; mov ah,2
    ; int 21h
    ; mov bl,variable_two
    ; add bl,30h
    ; mov dl,bl
    ; mov ah,2
    ; int 21h
    ; mov bl,variable_three
    ; add bl,30h
    ; mov dl,bl
    ; mov ah,2
    ; int 21h

;################

    ; mov dx,offset string_one
    ; mov ah,9
    ; int 21h

;################

    ; mov ah,1
    ; int 21h 
    ; mov num1 ,al
    ; mov dl,num1
    ; mov ah,8
    ; int 21h

;################
    
    ; mov si , offset str1
    ; loop1:
    ;     mov ah,1
    ;     int 21h 
    ;     cmp al,13 ; when enter --> enter 
    ;     je print
    ;     mov [si],al
    ;     inc si
    ;     jmp loop1

    ; print:
    ;     mov dx,offset str1
    ;     mov ah,9
    ;     int 21h


    mov ah,4ch 
    int 21h

main endp 
end main