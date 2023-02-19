.MODEL small
.STACK 100h
.DATA
     MY_Array DW '2000','323','400','1000'
     
.CODE
MAIN PROC
    MOV ax, @DATA
    MOV ds,ax
    
    MOV AH,2
    MOV dx,MY_Array
    INT 21h
    
    MOV dx,MY_Array[2]
    INT 21h
    
    MOV dx,MY_Array[4]
    INT 21h
    
    MOV dx,MY_Array[6]
    INT 21h
    
    MAIN ENDP
ENDP MAIN
