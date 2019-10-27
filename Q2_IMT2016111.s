     AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	    
		MOV R0, #0 ; 1st number is 0
		MOV R1, #1 ; 2nd number is 1
		MOV R2, #2 ; 3rd number is 2
		
LOOP1   CMP R0, R1 ; if R0 > R1
		BLE LOOP2 ; if less go to loop2
		B LOOP4 ; branch to loop4
		;B stop ; if greater end

LOOP2   CMP R1, R2 ; if R1 > R2
		BLE LOOP3 ; if less go to loop3
		B LOOP5 ; branch to loop5

LOOP3   MOV R5, R2 ; R5 = R2
		B stop

LOOP4   CMP R0, R2 ; if R0 > R2
		BLE LOOP3 ; if less go to loop5
		MOV R5, R0 ; R5 = R0
		B stop 

LOOP5   MOV R5, R1 ; R5 = R2
		B stop
		
		
stop B stop ; stop program
     ENDFUNC
	 END