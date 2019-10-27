     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	    
		MOV R1, #1 ; 1st number is 1 
		MOV R2, #1 ; 2nd number is 1 
		CMP R2, R1
		ITT EQ
		MOVEQ R3, #2
		IT EQ
		

stop B stop ; stop program
     ENDFUNC
	 END