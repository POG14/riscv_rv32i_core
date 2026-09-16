#-- Exercise 3:

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
#-- What values are tested for? ->
#-- What is the result worth?
#-- What's the byte value at memory location 0x00400015? ->
#-- How many bytes of memory does this program use? ->