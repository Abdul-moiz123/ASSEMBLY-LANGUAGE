.model small
.stack 100h
.data
.code
Main proc

    mov al, 5           

    mov bl, 3        

    sub al, bl       

    add al, 30h      

    mov dl, al       
    mov ah, 02h      
    int 21h          

    mov ah, 4Ch      
    int 21h          

Main endp
end Main
