     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	    
		MOV R1, #1 ; 1st number is 1 (a0)
		MOV R2, #1 ; 2nd number is 1 (a1)
		MOV R4, #2 ; final number is 2 (final)
		MOV R5, #0 ; when added the result is in this reg, initialising to 0 (current)
		MOV R6, #0x20000000 ; store the series in this address
		
		ADD R5, R1, R2 ; current = a0 + a1

LOOP1   CMP R5, R4 ; if current > final
		BLE LOOP2 ; if less go to loop2
		B stop ; if greater end

LOOP2   STR R5, [R6, #0] ; store the value in the memory
		MOV R1, R2 ; a1 = a0
		MOV R2, R5 ; a1 = current
		
		ADD R5, R1, R2 ; current = a0 + a1
		B LOOP1 ; branch to loop1
		
stop B stop ; stop program
     ENDFUNC
	 END