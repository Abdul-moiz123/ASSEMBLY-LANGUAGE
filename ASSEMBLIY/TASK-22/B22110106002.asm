;; square
; .model small
; .stack 100h
; .data
;     squareMsg db 'Square$'
;     rectangleMsg db 'Rectangle$'
;     parallelogramMsg db 'Parallelogram$'
; .code  
; main proc
;     ; Print "Square"
;     mov ah, 9
;     lea dx, squareMsg
;     int 21h

;     ; Draw Square (Color Red: bh = 04h)
;     mov ah, 6
;     mov al, 6
;     mov bh, 00010000b
;     mov ch, 5
;     mov cl, 5
;     mov dh, 13
;     mov dl, 13
;     int 10h

;     ; Terminate program
;     mov ah, 4ch
;     int 21h
; main endp
; end main


;; rectangle
; .model small
; .stack 100h
; .data
;     rectangleMsg db 'Rectangle$'
; .code
; Main proc
;     ; Print "Rectangle"
;     mov ah, 9
;     lea dx, rectangleMsg
;     int 21h

;     ; Draw Rectangle (Color Red: bh = 04h)
;     mov ah, 6
;     mov al, 10
;     mov bh, 00010000b
;     mov ch, 12
;     mov cl, 5
;     mov dh, 14
;     mov dl, 15
;     int 10h

;     ; Terminate program
;     mov ah, 4ch
;     int 21h
; Main endp
; End Main


; ; parallelogram
.model small
.stack 100h
.data
    parallelogramMsg db 'Parallelogram$'
.code
Main proc
    ; Print "Parallelogram"
    mov ah, 9
    lea dx, parallelogramMsg
    int 21h

    ; First region (Top-left)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 5
    mov cl, 8
    mov dh, 5
    mov dl, 15
    int 10h

    ; Second region (Bottom-right, shifted to simulate a slant)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 6
    mov cl, 7
    mov dh, 6
    mov dl, 14
    int 10h

    ; Third region (Further shifted)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 7
    mov cl, 6
    mov dh, 7
    mov dl, 13
    int 10h

    ; Fourth region (Bottom row)
    mov ah, 6
    mov al, 10
    mov bh, 00010000b
    mov ch, 8
    mov cl, 5
    mov dh, 8
    mov dl, 12
    int 10h

    ; Terminate program
    mov ah, 4ch
    int 21h
Main endp
End Main
