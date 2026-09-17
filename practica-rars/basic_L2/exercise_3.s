#-- Exercise 3 (5):

	.text
	
	addi x5, x0, 3  
	addi x6, x0, 5  
	addi x7, x0, 7  
	addi x8, x0, 9  
	
	
	sub x9, x7, x8   
	add x6, x6, x6  
	add x6, x6, x6   
	sub x9, x6, x9   
	add x5, x5, x5   
	add x5, x5, x9   
	addi x10, x5, 15 
	
	#-- Terminar
	li a7, 10
	ecall 

#-- Get the general expression that calculates the following program -> 
#-- -> f=43 | f=[x6(20) - x9(-2)] = x9(22) -> [x5(6) + x9(22)] = x5(28) -> [x5(28) + 15]=x10(43)
#-- -> f = 2x5 + 4x6 - (x7-x8) + 15
#-- What values are tested for? ->
#-- What is the result worth? -> 43
#-- What's the byte value at memory location 0x00400015? -> 03
#-- How many bytes of memory does this program use? -> 13 x 4bytes = 52 bytes