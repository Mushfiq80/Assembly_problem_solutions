;   Suppose that
;   AX= 1234h , BX= 5678h , CX = 9ABCh , and SP= 1
;   00h . Write an assembly program to find out the contents of AX ,
;   BX , CX , and SP after executing the following instructions:

.Model small
.stack 100h
.Data
;msg1 dw "ODD",24h,0DH,0AH
;msg2 dw "EVEN",24h,0Dh,0AH
.Code
Main proc
        MOV AX,1234h
        mov bx,5678h
        mov cx,8ABCh
        mov sp,100h
        
        
        PUSH AX
        PUSH BX
        XCHG AX,CX
        POP  CX
        PUSH AX
        POP  BX
     MAIN ENDP
END MAIN