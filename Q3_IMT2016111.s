     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	    
		MOV R0, #4 ; 1st number is 3
		AND R1, R0, #1 ; bit wise AND of the given number and store it in R1
		; check if R1 is 0 or 1
		; if R1 --> 1 --> input is odd
		; if R1 --> 0 --> input is even
		
stop B stop ; stop program
     ENDFUNC
	 END