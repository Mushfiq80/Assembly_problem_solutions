

.Model small
.stack 100h
.Data
;msg1 dw "ODD",24h,0DH,0AH
;msg2 dw "EVEN",24h,0Dh,0AH
.Code
Main proc
        MOV ah,1
        MOV CX,00H
        int 21h
        
      input:
        CMP AL,0DH
        JE ENTER
        PUSH AX
        INC CX
        INT 21h
        JMP input
        
        ENTER:
        MOV AH,2
        MOV DL,0Ah
        int 21h
        MOV DL,0DH
        int 21h
        
        REUSE:
        POP DX
        INT 21h
        loop REUSE
        
     MAIN ENDP
END MAIN