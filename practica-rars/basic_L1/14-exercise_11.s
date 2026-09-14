#-- Exercise 11
#-- Hay que realizar esta operación f = (a+b) - c + d + 50
#-- Primero asignamos cada una de las variables, a un registro

.text

li x5, 5        #-- variable a
li x6, 6        #-- variable b
li x7, 7        #-- variable c
li x8, 8        #-- variable d
li x10, 0       #-- variable f

a:                    #-- etiqueta a
add x10, x5, x6       #-- en el registro x10, suma x5 + x6
sub x10, x10, x7      #-- en el registro x10, resta (x5+x6) - x7
add x10, x10, x8      #-- en el registro x8, suma x10 + x8
addi x10, x10, 50     #-- en el registro x10, suma el resultado de x8 + 50
j a                   #-- finaliza a

li, a7, 10            #-- fin
ecall