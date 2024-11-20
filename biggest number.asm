.model small
.stack 100h
.data
a db 'input two numbers:$'
b db 10,13,'largest number: $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    ; Display message to input numbers
    mov ah,9
    lea dx,a
    int 21h
    
    ; Input first number
    mov ah,1
    int 21h
    sub al,'0'    ; Convert ASCII to integer
    mov bl,al
    
    ; Input second number
    mov ah,1
    int 21h
    sub al,'0'    ; Convert ASCII to integer
    mov bh,al
    
    ; Compare two numbers
    cmp bl,bh
    jg l1
    jmp l2         ; If bl > bh, jump to l1
    ; Otherwise, go to l2 (no need for explicit jump)
    
l2: 
    mov ah,9
    lea dx,b      ; Display "largest number:" message
    int 21h
    
    mov ah,2
    add bh,'0'    ; Convert integer to ASCII
    mov dl,bh
    int 21h
    jmp exit
    
l1: 
    mov ah,9
    lea dx,b      ; Display "largest number:" message
    int 21h
    
    mov ah,2
    add bl,'0'    ; Convert integer to ASCII
    mov dl,bl
    int 21h
    
exit: 
    mov ah,4ch    ; Terminate program
    int 21h
main endp
end main
main