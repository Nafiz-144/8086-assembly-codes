.model small
.stack 100h
.data

m db 'I am from Bangladesh $'  ; String to be displayed, terminated by '$' for DOS interrupt 21h

.code
main proc
    ; Set up the data segment
    mov ax, @data              ; Load the data segment address into AX
    mov ds, ax                 ; Set DS (data segment) to the value in AX

    ; Display the string 'I am from Bangladesh'
    mov ah, 9                  ; Function 9 of INT 21h to display a string
    lea dx, m                  ; Load effective address of the string (m) into DX
    int 21h                    ; Call DOS interrupt to display the string
    
    ; New line (carriage return + line feed)
    mov ah, 2                  ; Function 2 for character output
    mov dl, 13                 ; Carriage return (CR)
    int 21h                    ; Output CR
    mov dl, 10                 ; Line feed (LF)
    int 21h                    ; Output LF
    
    ; Take a single character input from the user
    mov ah, 1                  ; Function 1 of INT 21h to take a single character input
    int 21h                    ; Call DOS interrupt to read the character from the user
    mov bl, al                 ; Store the input character in BL
    
    ; New line (carriage return + line feed)
    mov ah, 2                  ; Function 2 for character output
    mov dl, 13                 ; Carriage return (CR)
    int 21h                    ; Output CR
    mov dl, 10                 ; Line feed (LF)
    int 21h                    ; Output LF
    
    ; Display the character entered by the user
    mov ah, 2                  ; Function 2 to display a single character
    mov dl, bl                 ; Load the character from BL into DL
    int 21h                    ; Call DOS interrupt to display the character

exit:                           ; Exit label
    mov ah, 4Ch                ; Function 4Ch to terminate the program
    int 21h                    ; Call DOS interrupt to terminate the program

main endp                       ; End of main procedure
end main                        ; End of the program
