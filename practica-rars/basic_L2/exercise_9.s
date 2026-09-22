#-- Exercise 9
#-- Rellenando la memoria con los valores 1,2,3,4,5..... com un bucle infinito

.data
v1:         #-- Lo dejamos vacio. Es el inicio 

.text
#-- Puntero de acceso a las variables
la x5, v1
#-- Iniciamos el registro contador en el registro 6 por ejemplo
li x6, 0
#-- Creamos el buble
bucle:
addi x6, x6, 1
#-- Almacenamos la variable x6, en el registro x5
sw x6, 0(x5)

addi x5, x5, 4      #-- aumento en 4 bits el registro x5.. con lo que pasará de terminar en 0, a 4, a 8, a c .....
b bucle             #-- bucle infinito