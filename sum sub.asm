.model small
.stack 100h
.data
    a db 'Input the first value: $'          ; Message to input the first value
    b db 10,13, 'Input the second value: $'  ; Message to input the second value with new line
    c db 10,13, 'Result after add: $'        ; Message displaying result after addition with new line
    d db 10,13, 'Result after sub: $'        ; Message displaying result after subtraction with new line
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; Display message to input the first value
    mov ah, 9
    lea dx, a
    int 21h
    
    ; Read first input character
    mov ah, 1
    int 21h
    sub al, 48         
    mov bl, al      
    
    ; Display message to input the second value
    mov ah, 9
    lea dx, b
    int 21h
    
    ; Read second input character
    mov ah, 1
    int 21h
    sub al, 48        
    mov bh, al        
    
    ; Addition
    mov ah, 9
    lea dx, c         
    int 21h
    
    mov al, bl         
    add al, bh         
    add al, 48         
    
    ; Display result after addition
    mov ah, 2
    mov dl, al         
    int 21h
    
    ; Subtraction
    mov ah, 9
    lea dx, d          
    int 21h
    
    mov al, bl        
    sub al, bh        
    add al, 48        
    
    ; Display result after subtraction
    mov ah, 2
    mov dl, al         
    int 21h
    
    ; Exit the program
    exit:
    mov ah, 4Ch
    int 21h
main endp
end main
