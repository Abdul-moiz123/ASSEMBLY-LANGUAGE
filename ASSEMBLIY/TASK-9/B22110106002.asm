.model small
.stack 100h
.data
    grade db ?            
    msg db 'Grade: $'     
.code
Main proc
    mov ax, @data
    mov ds, ax

    ; Input the score (0-9)
    mov ah, 1           
    int 21h               
    sub al, '0'           

    ; Determine the grade based on score
    cmp al, 9
    ja  invalid_input     ; If input>9, jump to invalid_input
    cmp al, 8
    jae A_grade           ; If score>=8, grade A
    cmp al, 6
    jae B_grade           ; If score>=6, grade B
    cmp al, 4
    jae C_grade           ; If score>=4, grade C
    cmp al, 2
    jae D_grade           ; If score>=2, grade D
    jmp F_grade           ; Else, grade F

A_grade:
    mov grade, 'A'
    jmp print_grade

B_grade:
    mov grade, 'B'
    jmp print_grade

C_grade:
    mov grade, 'C'
    jmp print_grade

D_grade:
    mov grade, 'D'
    jmp print_grade

F_grade:
    mov grade, 'F'
    jmp print_grade

invalid_input:
    mov grade, '?'

print_grade:
    mov ah, 9           
    lea dx, msg           
    int 21h               

    mov dl, grade         
    mov ah, 2           
    int 21h               

    mov ah, 4Ch           
    int 21h               

Main endp
end Main
