;Trying to compare value (above 9 or below 1)
.DATA
  
    
    
    
.CODE 
.STARTUP 

MAIN:   
    MOV AH,01h      
    INT 21h
    SUB AL,47  
    SUB AL,1
    CMP AL,9
    JA NOTBETWEEN
    CMP AL,1
    JB NOTBETWEEN 
    JMP BETWEEN
 


BETWEEN:
    MOV DL,'Y'
    JMP BOT
    
    
NOTBETWEEN:
    MOV DL,'N'
    JMP BOT   
    
    

BOT:
    MOV AH,02h
    INT 21h 

.EXIT:
END
