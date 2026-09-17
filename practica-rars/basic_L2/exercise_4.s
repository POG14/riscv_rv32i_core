#-- Exercise 4 (10):
#-- Write an assembly program that calculates this expression:
#-- f = (d-c) + 15 - (a+b)
#-- For the following values: 
#-- a = 1,2,3,4,5... 
#-- b = 2,3,4,5,6...
#-- c = 3,4,5,6,7...
#-- d = 4,5,6,7,8...

#-- In the first iteraction, f is calculated for the values: a=1, b=2, c=3, d=4....
#-- What is the value of the expression in the 10 iteraction?

.text

#-- Values
li x5, 1
li x6, 2
li x7, 3
li x8, 4
li x15, 0               #-- contador

#-- BUCLE
bucle:
sub x9, x8, x7          #-- x9 = d-c
addi x10, x9, 15        #-- x10 = d-c + 15
add x11, x5, x6         #-- x11 = a + b
sub x12, x10, x11       #-- f = x10[d-c + 15] - x11(a-b)

#-- añadimos un 1, en cada variable
addi x5, x5, 1
addi x6, x6, 1
addi x7, x7, 1
addi x8, x8, 1

#-- contador para saber por que vuelta va
addi x15, x15, 1
j bucle                 #-- repetir ciclo indefinidamente

#-- For the 10 iteraction, the result is -5
