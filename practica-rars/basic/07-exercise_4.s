#-- Exercise 4:
#-- Escribe un programa que ejecute las siguientes acciones: Inicializar el registro x6 a 0| restarle 1 | terminar
#-- ¿Cual es el valor hexadecimal del registro x6 al terminar el programa?

.text

addi x6, x0, 0

addi x6, x6, -1

li a7, 10
ecall
