#-- Exercise 7
#-- Ejemplo de lectura variable de memoria
#-- modificación de la variable
#-- y escritura de la variable

.data

.word 0XCAFEBACA

.text 
#-- Meter la dirección de la variable en el registro x6
li x6, 0x10010000
#-- Leer la varaible (la cargarmos en x5)
lw x5, 0(x6)
#-- Incrementar el x5
addi x5,x5,1
#-- Almacenar x5 en la variable
sw x5, 0(x6)

#-- Terminar
li a7, 10
ecall

#-- Imagina que cada vez que queremos guardar y cargar un registro tenemos que poner la dirección.
#-- no sería rentable porque con una instrucción, no pasa nada, pero con más instrucciones es imposible.
#-- usamos las etiquetas, ej. Y lo único que tienes que cambiar es "li", ya que este es solo para números.
#-- para las etiquetas usamos "la": load address. Sería así: 
#-- a1: .word 0XCAFEBACA
#-- la x6, a1 
