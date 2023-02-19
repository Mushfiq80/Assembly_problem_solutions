.MODEL SMALL
.STACK 100h
.Data

MSG1 DW 0AH,0DH,"Alphabet",0AH,0DH,24H
MSG2 DW 0AH,0DH,"Not Alphabet",0AH,0DH,24H
MSG3 DW 0AH,0DH,"Thank You",0AH,0DH,24H,

.CODE MAIN  
    MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        LEA DX,MSG2
        
        MOV AH,1
        INT 21H
        
        CMP AL,61H
        JGE SM
        
        
        CMP AL,41H
        JGE CHK
        JMP EXIT
        
        
        
        CHK:
            CMP AL,5BH
            JL OK
            JMP EXIT
            
        SM:
            CMP AL,7BH
            JL OK
            JMP EXIT
            
        
        OK: 
            LEA DX,MSG1
            
        EXIT:
        MOV AH,09H
        INT 21H
        LEA DX,MSG3
        INT 21H
        
        MAIN ENDP
    END MAIN
         
         