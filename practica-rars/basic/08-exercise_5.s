#-- Exercise 5
#-- Ejecuta ese código y ¿que es lo que hace? Intenta deducir el funcionamiento del programa a partir de su ejecución
#-- Programa:

.text

addi x3, x0, 10
a:                  #-- Podría llamarse pepito, escopeta... es un variable y en su interior está: x3, x3, -1
addi x3, x3, -1
bgt x3, x0, a       #-- bucle: "mientras que x3 se mayor que x0 (0), volverá a "a". En cuanto no sea mayor que 0, seguirá su curso en el programa

li a7, 10
ecall

