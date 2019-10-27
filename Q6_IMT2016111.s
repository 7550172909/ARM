     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	    
		MOV R0, #1 ; a is 1 
		MOV R1, #2 ; b is 2 

WHILE	CMP R0, R1
		BEQ stop
		;CMP R0, R1
		ITE GT
		SUBGT R0, R0, R1 ; a = a - b 
		SUBLE R1, R1, R0 ; b = b - a
		B WHILE

stop B stop ; stop program
     ENDFUNC
	 END