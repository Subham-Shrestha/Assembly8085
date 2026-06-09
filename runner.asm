; runner.asm
; 8085 sample program: increment a block of bytes in memory
; This program demonstrates a simple execution loop on an 8085 system.

        ORG 0000H
START:  LXI H, 2000H      ; point HL to start of data block
        MVI C, 05H        ; count of bytes to process

LOOP:   MOV A, M          ; load memory byte into accumulator
        INR A             ; increment the value
        MOV M, A          ; store back to memory
        INX H             ; move to next memory byte
        DCR C             ; decrement counter
        JNZ LOOP          ; repeat until all bytes processed

        HLT               ; stop execution

        ORG 2000H
DATA:   DB 01H, 02H, 03H, 04H, 05H
