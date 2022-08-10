# Operadores Lógicos
number <- 20
number > 10
number > 10 & number > 15

(number > 19) & (number > 5) & (number == 18) #Muchas condiciones

number > 28 || number > 16

!number > 28

data <- mtcars

subset(data, mpg > 20)

subset(data, mpg > 20 & cyl == 6)

subset(data, mpg > 20 | cyl == 6)

subset(data, !cyl == 6)