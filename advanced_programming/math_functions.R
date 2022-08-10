#Funciones matemáticas

#Calcular el valor absoluto de un número
abs(3) 
vect <- c(-3,-9-2)

#Sumar los elementos que se pasan por parámetros
sum(3,2,5)
vect2 <- c(3,5,9,1)
sum(vect2)

matriz <- matrix(1:12, nrow=3)
sum(matriz)

#Encontrar la media
mean(matriz)
mean(vect2)

#Encontrar valor minímo y máximo
values <- sample(1:100, 12)
matriz2 <- matrix(values, nrow = 3)

min(matriz2)
max(matriz)

#Redondear
round(2.345443, 2) #Se pasa el número y los decimales a redondear