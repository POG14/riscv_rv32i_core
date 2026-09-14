#-- Exercise 10
#-- Vamos a hacer un programa que calcule la suma de los numeros enteros, es decir; 1+2+3+4+5+6...
#-- Para ello necesitamos un registro como contador = 0,1,2,3,4,5....
#-- El resultado se deja en el registro x6

#-- ¿Como hacemos la suma? En cada vuelta del bucle sumamos el valor de x5 a la cuenta acumulada de x6

.text
li x5, 0
li x6, 0

bucle:
addi x5, x5, 1      #-- contador
add x6, x5, x6      
b bucle             #-- repetir indefinidamente

