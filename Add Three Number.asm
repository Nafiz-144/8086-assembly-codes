.model small
.stack 100h
.data
a db 10, 13, 'Enter the first number->: $'
b db 10, 13, 'Enter the second number->:$'
c db 10, 13, 'Enter the third number->:$'
d db 10, 13, 'Result= $'
.code

main proc
    mov ax, @data
    mov ds, ax

    ; Prompt for the first number and read it.
    mov ah, 9
    lea dx, a
    int 21h

    mov ah, 1
    int 21h
    mov bl, al

    ; Prompt for the second number and read it.
    mov ah, 9
    lea dx, b
    int 21h

    mov ah, 1
    int 21h
    mov bh, al

    ; Prompt for the third number and read it.
    mov ah, 9
    lea dx, c
    int 21h

    mov ah, 1
    int 21h
    mov cl, al

    ; Add the three numbers and print the result.
    mov ah, 9
    lea dx, d
    int 21h

    add bl, bh
    add bl, cl
    sub bl, 48
    mov ah, 2
    mov dl, bl
    int 21h

    ; Exit the program.
    mov ah, 4ch
    int 21h
main endp
end main