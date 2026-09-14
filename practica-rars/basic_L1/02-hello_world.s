#-- Programa de prueba: Hola munndo en Risc-V
#-- Asi se escriben comentarios
    .data
str: .string "Hola mundo en RISC-V!\n"

    .text

main:

    la a0, str
    li a7, 4
    ecall

    li a7, 10
    ecall
    