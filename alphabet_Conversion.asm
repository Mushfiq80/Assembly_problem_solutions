.MODEL SMALL
.STACK 100h
.Data

MSG DW "Invalid Input",0AH,0DH,24H

.CODE MAIN  
    MAIN PROC
        
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,1
        INT 21H
        
        CMP AL,61H
        JGE SM
        
        
        
        CMP AL,41H
        JGE CHK
        JMP Error
        
        
        
        CHK:
            CMP AL,5BH
            JL OK1
            JMP Error
            
        SM:
            CMP AL,7BH
            JL OK2
            JMP Error
            
        
        OK1: 
            ADD AL,20H
            
            JMP EXIT
            
        OK2:
            
            SUB AL,20H
            
            
        EXIT:
        MOV AH,2H
        MOV DL,AL
        INT 21H
       
        Error:
        LEA DX, MSG
        MOV AH,09H
        JMP DONE
        
        DONE:
            INT 21H
        
        MAIN ENDP
    END MAIN
         
         