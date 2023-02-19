.MODEL small
.STACK 100h
.CODE
MAIN PROC
    MOV AH,1
    INT 21h
    
    MOV BL,AL
   
    
    INT 21h
    MOV BH,AL
    
    
    CMP BL,30h
    JGE chkbl
    
    
    
    
    
    chkbl:
    CMP BL,39h
    JLE chk2
    
    
    chk2:
      CMP BH,30h
      JGE chk3
      
    chk3:
      CMP BH,39h
      JLE go
      JMP EXIT
    
    go:
    CMP BL,BH
    JG swap
    
    MOV DL,BL
    MOV AH,2
    INT 21h
    MOV DL,BH
    INT 21h
    JMP EXIT
    
    swap:
        MOV CL,BH
        MOV CH,BL
        
        MOV DL,CL
        MOV AH,2
        INT 21h
        MOV DL,CH
        INT 21h
    EXIT:
        
        
        MAIN ENDP
END MAIN

        