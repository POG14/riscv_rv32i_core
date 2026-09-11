#-- Blink program
#-- X5 register is increase indefinitely

.text

#-- X5 = 0
addi x5, x0, 0

#Indefinity
bucle:
#-- X5 = X5 +1 (Increase X5 counter)
addi x5, x5, +1
b bucle
