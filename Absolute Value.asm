.model small
.stack 100h
.data
a db 'Enter the number:$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; Display message
    mov ah, 9
    lea dx, a
    int 21h
    
    ; Add new line
    mov ah, 2
    mov dl, 10  ; Line Feed
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
    ; Input a single digit number
    mov ah, 1
    int 21h
    sub al, '0'  ; Convert ASCII to number
    
    ; Check if the number is negative
    cmp al, 0
    jge print_number  ; If positive, jump to print_number
    neg al            ; If negative, make it positive
    
    ; Print '-' sign for negative numbers
    mov ah, 2
    mov dl, '-'
    int 21h

print_number:
    add al, '0'  ; Convert back to ASCII
    mov ah, 2
    mov dl, al
    int 21h      ; Print the number

    ; Exit the program
    mov ah, 4Ch
    int 21h
main endp
end main
    