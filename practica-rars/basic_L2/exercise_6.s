#-- Exercise 6

#-- Pasamos a ver los datos (data).
#-- Vamos a almacenar palabras en el segmento de datos.
#-- Siempre que vamos a almacenar palabras dentro de data, hay que definirlas como ".word"

.data

a: .word 0xBEBECAFE, 1, 2
b: .word 0xFACEB00C, 0XABCDEF0

.text


#-- finalizar programa
li a7, 10
ecall
