 ; TASK NO 01 --> PRINT SINGLE CHARCTER ON SCREEN
.model small
.stack 100h
.data
.code
Main proc

    mov dl,'A'
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h

Main endp
End Main


;TASK NO 02 --> PRINT NAME ON SCREEN
.model small
.stack 100h
.data
.code
Main proc

    mov dl,'M'
    mov ah,2 
    int 21h     
    mov dl,'O'
    mov ah,2 
    int 21h     
    mov dl,'I'
    mov ah,2 
    int 21h     
    mov dl,'Z'
    mov ah,2 
    int 21h 
    mov ah,4ch 
    int 21h

Main endp
End Main


; TASK NO 03 --> TAKE INPUT AND PRINT ON SCREEN
.model small
.stack 100h
.data
.code
Main proc

    mov ah,1
    int 21h
    mov dl,al
    mov ah,8
    int 21h
    mov ah,4ch 
    int 21h

Main endp
End Main


; TASK NO 04 --> ADD TWO NUMBER
.model small
.stack 100h
.data
.code
Main proc

    mov al,5
    mov bl,3
    add al,bl
    add al,30h
    mov dl,al
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 05 --> ALPHABAT USING LOOP
.model small
.stack 100h
.data
.code
Main proc

    mov cx,26
    mov dx,97
    loop1:
        mov ah,2
        int 21h
        inc dx
    loop loop1   
    mov ah,4ch 
    int 21h   
    
Main endp
End Main

; ################################################################################################################

; TASK NO 06 --> PRINT STRING ON SCREEN
.model small
.stack 100h
.data
    string db 'HELLOWORLD$'
.code
Main proc

    mov ax,@data
    mov ds,ax
    mov dx, offset string
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 07 --> TWO STRING IN TWO LINES
.model small
.stack 100h
.data
    string1 db "ABDUL$"
    string2 db "MOIZ$"
.code
Main proc

    mov ax,@data
    mov ds,ax
    mov dx, offset string1
    mov ah,9
    int 21h
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    mov dx, offset string2
    mov ah,9
    int 21h
    mov ah,4ch 
    int 21h 
    
Main endp
End Main


; TASK NO 08 --> UPPERCASE TO LOWERCASE 
.model small
.stack 100h
.data
.code
Main proc

    mov ah,1 
    int 21h
    mov dl,al
    add dl,32
    mov ah,8
    int 21h
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 09 --> LOWERCASE TO UPPERCASE
.model small
.stack 100h
.data
.code
Main proc

    mov ah,1 
    int 21h
    mov dl,al
    sub dl,32
    mov ah,8
    int 21h
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 10 --> INPUT STRING AND PRINT ON SCREEN
.model small
.stack 100h
.data
    string db 50 dup("?")
.code
Main proc

    mov ax,@data
    mov ds,ax
    mov si,offset string 
    loop1:
        mov ah,1 
        int 21h
        cmp al,13
        je print
        mov [si],al
        inc si
        jmp loop1
    print:
        mov dx ,offset string
        mov ah ,9
        int 21h
    mov ah, 4ch
    int 21h

Main endp
End Main


; TASK NO 11 --> INPUT STRING AND PRINT LENGTH ON SCREEN
.model small
.stack 100h
.data
    string db 100 dup("?")
.code
Main proc

    mov ax,@data
    mov ds,ax
    mov si,offset string
    mov bl,0
    loop1:
        mov ah,1 
        int 21h 
        cmp al,13
        je print
        mov [si],al
        inc si
        inc bl
        jmp loop1
    print:
        mov dl,bl   
        add dl,30h
        mov ah,2
        int 21h
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 12 --> EVEN OR ODD NUMBER
.model small
.stack 100h
.data
    string1 db 'EVEN$'
    string2 db 'ODD$'
.code
Main proc   

    mov ax,@data
    mov ds,ax

    mov ah,1
    int 21h
    mov bl,2
    div bl
    cmp ah,0
    je isEVEN
    mov dx,offset string2
    mov ah,9 
    int 21h
    jmp exit
    isEVEN:
        mov dx,offset string1    
        mov ah,9
        int 21h
        jmp exit
    exit:
    mov ah,4ch
    int 21h

Main endp
End Main

; #############################################################################################

; TASK NO 13 --> SUM OF ODD NUMBER 1 TO 100 
.model small
.stack 100h
.data
.code
Main proc

    mov cx,1
    mov ax,0
    loop1:
        add ax,cx
        add cl,2
        cmp cl,100
        jl loop1

    mov dx,0
    mov bx,10
    mov cx,0
    loop2:
        div bx
        push dx
        mov dx,0

        mov ah,0
        inc cx
        cmp ax,0
    jne loop2

    mov ah,2
    loop3:
        pop dx
        add dx,48
        int 21h
    loop loop3 

    mov ah,4ch 
    int 21h  

Main endp
End Main


; TASK NO 14 --> SUM OF EVEN NUMBER 1 TO 100 
.model small
.stack 100h
.data
.code
Main proc

    mov cx,0
    mov ax,0
    loop1:
        add ax,cx
        add cl,2
        cmp cl,100
        jle loop1

    mov dx,0
    mov bx,10
    mov cx,0
    loop2:
        div bx
        push dx
        mov dx,0
        mov ah,0
        inc cx
        cmp ax,0
    jne loop2

    mov ah,2
    loop3:
        pop dx
        add dx,48
        int 21h
    loop loop3 

    mov ah,4ch 
    int 21h  

Main endp
End Main


; TASK NO 15 --> LARGEST NUMBER IN AN ARRAY
.model small
.stack 100h
.data
    array db 1,2,3,4,5,6,7,8,9
    res db ?
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov cx,9
    mov bl,0
    mov dx,offset array
    up:
        mov al,[si]
        cmp al,bl
        jl nxt
        mov bl,al
    nxt:
        inc si 
        dec cx 
        jnz up 
    mov res,bl
    mov dl,res 
    add dl,48 
    mov ah,2
    int 21h   
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 16 --> SMALLEST NUMBER IN AN ARRAY
.model small
.stack 100h
.data
    array db 1,2,3,4,5,6,7,8,9
    res db ?
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov cx,9
    mov bl,79h
    mov dx,offset array
    up:
        mov al,[si]
        cmp al,bl
        jge nxt
        mov bl,al
    nxt:
        inc si 
        dec cx 
        jnz up 
    mov res,bl
    mov dl,res 
    add dl,48 
    mov ah,2
    int 21h   
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 17 --> WHICH IS DIVISIBLE BY 2 AND 3
.model small
.stack 100h
.data
    ev db 'DIVISIBLE BY 2$'
    od db 'DIVISIBLE BY 3$'
.code
Main proc

    mov ax,@data 
    mov ds,ax

    mov ah,1
    int 21h
    mov bl,2
    div bl

    cmp ah,0
    je isEV

    mov dx,offset od
    mov ah ,9
    int 21h
    jmp exit

     isEV:
        mov dx,offset ev
        mov ah ,9
        int 21h
        jmp exit

    exit:
        mov ah,4ch  
        int 21h          

Main endp
End Main


; TASK NO 18 --> 10 NUMBER FROM USER AND DISPLAY AFTER PLACING IN ARRAY
.model small
.stack 100h
.data
    array db 10 dup("?")
.code
Main proc

    mov ax,@data 
    mov ds,ax

    mov si , offset array

    loop1:
        mov ah ,1 
        int 21h
        cmp al,13
        je print
        mov [si],al
        inc si
        jmp loop1

    print: 
        mov dx,offset array 
        mov ah,9  
        int 21h     

    mov ah,4ch   
    int 21h            

Main endp
End Main


; TASK NO 19 --> GET NUMBER IN FORM OF ARRAY AND PRINT IT
.model small
.stack 100h
.data
    array db 10 dup("?")
.code
Main proc

    mov ax,@data  
    mov ds,ax

    mov si,offset array 
    mov bl,','
    loop1:
        mov ah,1
        int 21h
        cmp al,13 
        je print
        cmp al,bl 
        je loop1
        mov [si],al
        inc si
        jmp loop1

    print:
        mov dx,offset array 
        mov ah,9  
        int 21h     

    mov ah,4ch   
    int 21h            

Main endp
End Main

;#####################################################################################################################

; TASK NO 20 --> REVERSE THE STRING 
.model small
.stack 100h
.data
    array db 'm','o','i','z'
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si , offset array 
    mov cx,4
    loop1:
        mov ax,[si]
        push ax
        inc si
    loop loop1

    mov cx,4
    loop2:
        pop dx
        mov ah,2
        int 21h
        inc si
    loop loop2    

    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 21 --> INPUT STRING AND THAN REVERSE IT
.model small
.stack 100h
.data
    array db 100 dup("?")
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si, offset array
    mov bl,0
    loop1:
        mov ah,1
        int 21h  
        cmp al,13
        je print
        mov [si],al
        inc si
        inc bl
        jmp loop1

    print: 
        dec si 
        mov dx,[si]
        mov ah,2
        int 21h
    loop print

    mov ah,4ch
    int 21h    

Main endp
End Main


; TASK NO 22 --> take 2 number and check graeter,less , equal , not equal
.model small
.stack 100h
.data
    equal db 'NUMBERS ARE EQUAL$'
    unequal db 'NUMBERS ARE UNEQUAL AND$'
    greater db 'FIRST NUMBER IS GREATER THAN OTHER$'
    lesser db 'FIRST NUMBER IS LESSER THAN OTHER$'
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov ah,1
    int 21h
    mov bl,al

    mov ah,1
    int 21h
    mov cl,al

    L1:
    cmp bl,cl
    je EQUAL1
    
    mov dx,offset unequal
    mov ah,9   
    int 21h 

    cmp bl,cl
    jg GREATER1

    mov dx,offset lesser
    mov ah,9   
    int 21h 
    jmp exit 
    
    EQUAL1:
        mov dx,offset equal
        mov ah,9   
        int 21h 
        jmp exit
    GREATER1:
        mov dx,offset greater
        mov ah,9   
        int 21h 
        jmp exit
    exit:
        mov ah,4ch 
        int 21h

Main endp
End Main


; TASK NO 23 --> DISPLAY CHARCTER 100 TIME ON SCREEN
.model small
.stack 100h
.data
.code
Main proc

    mov ah,1 
    int 21h
    mov bl,al
    mov cx,100
    L1:
        mov dl,bl
        mov ah,2
        int 21h

        mov dx,10
        mov ah,2 
        int 21h

        mov dx,13
        mov ah,2 
        int 21h

    loop L1    

    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 24 --> PATTERN OF STAR
.model small
.stack 100h
.data
.code
Main proc

    mov bx,1
    mov cx,5

    L1:
    push cx
    mov cx,bx
    L2:    
        mov dl,"*"
        mov ah,2
        int 21h
    loop L2 

    mov dx,10
    mov ah,2 
    int 21h

    mov dx,13
    mov ah,2 
    int 21h

    inc bl
    pop cx 
    loop L1

    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 25 --> PATTERN OF NUMBER
.model small
.stack 100h
.data
.code
Main proc

    mov ah,1 
    int 21h

    mov cl,al
    sub cl,48

    mov dx,10
    mov ah,2 
    int 21h

    mov dx,13
    mov ah,2 
    int 21h

    mov bx,1 

    L1:
        push cx
        mov cx,bx

    L2:       
        mov dx,bx  
        add dx,48  
        mov ah,2  
        int 21h 
    loop L2

    mov dx,10
    mov ah,2 
    int 21h

    mov dx,13
    mov ah,2 
    int 21h

    inc bl
    pop cx 
    loop L1

    mov ah,4ch
    int 21h

Main endp
End Main

###################################################################

; TASK NO 26 --> TWO NUMBER MULTILICATION
.model small
.stack 100h
.data
.code
Main proc

    mov al,5
    mov bl,9
    mul bl
    AAM

    mov ch,ah
    mov cl,al

    mov dl,ch
    add dl,30h
    mov ah,2
    int 21h
    
    mov dl,cl
    add dl,30h
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 27 --> TWO NUMBER DIVIDED --> Q AND R 
.model small
.stack 100h
.data
    q db ?
    r db ?
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov ax,27
    mov bl,5
    div bl

    mov q ,al
    mov r ,ah

    mov dl,q
    add dl,30h
    mov ah,2
    int 21h

    mov dl,r
    add dl,30h
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h 

Main endp
End Main


; TASK NO 28 --> INPUT STRING AND TELL THE OCCURENCE OF CHAR IN IT
.model small
.stack 100h
.data
    string db 100 dup("?")
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si,offset string

L1: 
    mov ah,1
    int 21h
    cmp al,13
    je print
    mov [si],al
    inc si
    jmp L1

print:
    mov si,offset string
    mov dl,0
    mov bl,'$'

count_loop:
    cmp [si],13
    je done
    cmp [si],bl
    jne next_char
    inc dl
next_char:
    inc si
    jmp count_loop

done:
    add dl,30h
    mov ah,2
    mov dl,dl
    int 21h

    mov ah,4ch
    int 21h

Main endp
End Main


; TASK NO 29 --> LOWER CASE TO UPPERCASE STRING
.model small
.stack 100h
.data
    string db 100 dup("?")
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si,offset string         
    mov bl,0

    loop1:
        mov ah,1
        int 21h
        cmp al,13 
        je print 
        mov [si],al
        inc si
        inc bl
        jmp loop1

    print:
        mov si,offset string          
        mov cl,bl
        uppercase:
            mov dx,[si]
            sub dx,32
            mov ah,2
            int 21h
            inc si
        loop uppercase
        
    mov ah,4ch     
    int 21h   

Main endp
End Main


; TASK NO 30 --> UPPPER CASE TO LOWER CASE STRING
.model small
.stack 100h
.data
    string db 100 dup("?")
.code
Main proc

    mov ax,@data
    mov ds,ax

    mov si,offset string         
    mov bl,0

    loop1:
        mov ah,1
        int 21h
        cmp al,13 
        je print 
        mov [si],al
        inc si
        inc bl
        jmp loop1

    print:
        mov si,offset string          
        mov cl,bl
        lowercase:
            mov dx,[si]
            add dx,32
            mov ah,2
            int 21h
            inc si
        loop lowercase
        
    mov ah,4ch     
    int 21h   

Main endp
End Main