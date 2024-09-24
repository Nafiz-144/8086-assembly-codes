.model small
.stack 100h
.data 

a db 'Jump Concept $'           ; String to display for "Jump Concept"
b db 'Assembly Language $'       ; String to display for "Assembly Language"
c db 'Programming $'             ; String to display for "Programming"
.code
main proc
    ; Initialize the data segment
    mov ax, @data               ; Load the data segment address into AX
    mov ds, ax                  ; Set DS (data segment) to the value in AX

    ; Display the string "Jump Concept"
    mov ah, 9                   ; Function 9 of INT 21h to display a string
    lea dx, a                   ; Load the effective address of string 'a' into DX
    int 21h                     ; Call DOS interrupt to display the string

    ; New line (carriage return + line feed)
    mov ah, 2                   ; Function 2 for character output
    mov dl, 13                  ; Carriage return (CR)
    int 21h                     ; Output CR
    mov dl, 10                  ; Line feed (LF)
    int 21h                     ; Output LF

    ; Jump to display "Assembly Language"
m:                              ; Label 'm'
    mov ah, 9                   ; Function 9 to display string
    lea dx, b                   ; Load the effective address of string 'b'
    int 21h                     ; Display the string
    jmp n                       ; Jump to label 'n'

n:                              ; Label 'n'
    ; Display the string "Programming"
    mov ah, 9                   ; Function 9 to display a string
    lea dx, c                   ; Load the effective address of string 'c'
    int 21h                     ; Display the string
    jmp exit                    ; Jump to exit

exit:                           ; Exit label
    ; Terminate the program
    mov ah, 4Ch                 ; Function 4Ch to terminate the program
    int 21h                     ; Call DOS interrupt to terminate

main endp                       ; End of main procedure
end main                        ; End of the program
