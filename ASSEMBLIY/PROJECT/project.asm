.model small
.stack 100h
.data
welcome db "Welcome to NADRA", 0dh, 0ah, "$"
head db "NADRA MANAGEMENT SYSTEM", 0dh, 0ah, "$"
choice db "Enter 1 to make a CNIC", 0dh, 0ah, "$"
choice2 db "Enter 2 to renew a CNIC", 0dh, 0ah, "$"
choice3 db "Enter 3 to print details", 0dh, 0ah, "$"
choice4 db "Enter 4 to update details", 0dh, 0ah, "$"
askid db "Please enter your CNIC number: ", 0
success_make db "CNIC successfully created!", 0dh, 0ah, "$"
success_renew db "CNIC successfully renewed!", 0dh, 0ah, "$"
details db "Printing your CNIC details...", 0dh, 0ah, "$"
updated db "Details successfully updated!", 0dh, 0ah, "$"
invalid_choice db "Invalid choice, please try again.", 0dh, 0ah, "$"
id db 17, 0
opt db ?  ; To store user choice

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Print welcome message
    mov ah, 09h
    lea dx, welcome
    int 21h

    ; Print head message
    mov ah, 09h
    lea dx, head
    int 21h

    ; Print choices
    mov ah, 09h
    lea dx, choice
    int 21h
    mov ah, 09h
    lea dx, choice2
    int 21h
    mov ah, 09h
    lea dx, choice3
    int 21h
    mov ah, 09h
    lea dx, choice4
    int 21h

    ; Read user choice
    mov ah, 01h
    int 21h
    sub al, '0'
    mov opt, al  ; Store user choice

    ; Handle user choice
    cmp opt, 1
    je make_cnic
    cmp opt, 2
    je renew_cnic
    cmp opt, 3
    je print_details
    cmp opt, 4
    je update_details

    ; Invalid choice, print error message
    mov ah, 09h
    lea dx, invalid_choice
    int 21h

    ; Exit program
    mov ax, 4C00h
    int 21h

make_cnic proc
    ; Print askid message
    mov ah, 09h
    lea dx, askid
    int 21h

    ; Read CNIC number (17 digits max)
    mov ah, 0Ah
    lea dx, id
    int 21h

    ; Print success message for CNIC creation
    mov ah, 09h
    lea dx, success_make
    int 21h

    ret
make_cnic endp

renew_cnic proc
    ; Print askid message
    mov ah, 09h
    lea dx, askid
    int 21h

    ; Read CNIC number (17 digits max)
    mov ah, 0Ah
    lea dx, id
    int 21h

    ; Print success message for CNIC renewal
    mov ah, 09h
    lea dx, success_renew
    int 21h

    ret
renew_cnic endp

print_details proc
    ; Print details message
    mov ah, 09h
    lea dx, details
    int 21h

    ret
print_details endp

update_details proc
    ; Print askid message for updating details
    mov ah, 09h
    lea dx, askid
    int 21h

    ; Read CNIC number (17 digits max)
    mov ah, 0Ah
    lea dx, id
    int 21h

    ; Print success message for updating details
    mov ah, 09h
    lea dx, updated
    int 21h

    ret
update_details endp

main endp
end main
