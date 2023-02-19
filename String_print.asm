.MODEL small
.STACK 100h
.CODE
MAIN PROC
    MOV AH,1
    INT 21h
    
    MOV BL,AL
    
    MOV AH,1
    INT 21h
    
    MOV BH,AL
    
    ADD BL,BH
    
    MOV AH,2
    MOV DL,BL
    INT 21h
    MAIN ENDP
ENDP MAIN
   