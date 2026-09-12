#-- Exercise 3
#-- Escribe un programa para el RISC-V para que el registro x3 tome los valores 0,1,2,3,4,5.... el x4 0,3,6,9,12,15 y el x5 0,5,10,15,20,25... indefinidamente.

.text
#-- Valores inciales, podría ser mediante lo tradicional:
#-- addi x3, x0, 0
#-- addi x4, x0, 0
#-- addi x5, x0, 0
#-- Pero hoy vamos a probar un nuevo comando: la macro -> .macro / .end_macro
#-- ponemos un nombre a la macro -> zero_comun y aparte tenemos que asignarle un valor, que llamaremos "valor" -> %(valor)
.macro zero_comun (%valor)
    addi %valor, x0, 0
.end_macro

zero_comun (x3)
zero_comun (x4)
zero_comun (x5)

#bucle + valor para cada trama
bucle:
addi x3, x3, +1
addi x4, x4, +3
addi x5, x5, +5

#repetir bucle indefinidamente
j bucle
