.MODEL small
.STACK 100h
.CODE
MAIN PROC
    MOV AH,1
    INT 21h
    
    MOV BL,AL
    
    MOV AH,1
    INT 21h
    
    SUB AH,30
    SUB 
    
    
    MOV BH,AL
    
    ADD BL,BH
    ADD BL,30
    
    MOV AH,2
    MOV DL,BL
    INT 21h
    MAIN ENDP
END MAIN
   