.model small
.stack 100h
.data
.code
Main proc

    mov bx, 1         
    mov cx, 5         

L1:
    push cx           
    mov cx, bx        

L2:
    mov dl, '*'        
    mov ah, 2          
    int 21h            

    loop L2            

    mov dl, 13        
    mov ah, 2
    int 21h
    mov dl, 10        
    mov ah, 2
    int 21h

    inc bx            
    pop cx            
    loop L1           

Main endp
End Main
