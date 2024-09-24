.model small
.stack 100h
.data
m db "Loop Concept $"     ; String to display, with a '$' to terminate for DOS interrupt

.code
main proc
    ; Initialize data segment
    mov ax, @data         ; Load the data segment address into AX
    mov ds, ax            ; Set DS (data segment) to the value in AX

    ; Display the string "Loop Concept"
    mov ah, 9             ; Function 9 of INT 21h to display a string
    lea dx, m             ; Load the effective address of the string (m) into DX
    int 21h               ; Call DOS interrupt to display the string

    ; New line (carriage return + line feed)
    mov ah, 2             ; Function 2 for character output
    mov dl, 13            ; Carriage return (CR)
    int 21h               ; Output CR
    mov dl, 10            ; Line feed (LF)
    int 21h               ; Output LF

    ; Loop to print A to Z
    mov cx, 26            ; Set CX to 26 (loop count for 26 letters A-Z)
    mov ah, 2             ; Function 2 for character output
    mov dl, 'A'           ; Load the ASCII value of 'A' into DL (starting point)

level1:                    ; Loop label
    int 21h               ; Call DOS interrupt to display the current character in DL
    inc dl                ; Increment DL to get the next character (e.g., 'A' to 'B')
    loop level1           ; Decrement CX and loop back to level1 if CX is not zero

exit:                      ; Exit label
    mov ah, 4Ch           ; Function 4Ch to terminate the program
    int 21h               ; Call DOS interrupt to terminate the program

main endp                  ; End of main procedure
end main                   ; End of the program
