.model small            ; Define the memory model as small (single data and code segments)
.stack 100h             ; Allocate 256 bytes for the stack
.data                   ; Data segment (optional, no data defined here)
.code                   ; Code segment

main proc               ; Main procedure starts
    mov ah, 1           ; Function 1 of INT 21h to read a character from input (keyboard)
    int 21h             ; Call DOS interrupt to take input
    mov bl, al          ; Store the input character in register BL (first character)

    mov ah, 1           ; Function 1 of INT 21h again to read the second character
    int 21h             ; Call DOS interrupt to take input
    mov bh, al          ; Store the second character in register BH (second character)

    mov ah, 2           ; Function 2 of INT 21h to display a character
    mov dl, bh          ; Load the second character (BH) into DL for output
    int 21h             ; Call DOS interrupt to display the second character

    mov ah, 2           ; Function 2 of INT 21h again to display a character
    mov dl, bl          ; Load the first character (BL) into DL for output
    int 21h             ; Call DOS interrupt to display the first character

exit:                   ; Exit label
    mov ah, 4Ch         ; Function 4Ch of INT 21h to terminate the program
    int 21h             ; Call DOS interrupt to terminate
main endp               ; End of main procedure
end main                ; End of the program
