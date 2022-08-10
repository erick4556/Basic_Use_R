#1.Crear na matriz con 2 filas y 4 columnas
vect1 <- c(4,10,5,3)
vect2 <- c(2,8,25,14)
#matriz <- matrix(c(vect1, vect2), nrow = 2, byrow = T)
matriz <- rbind(vect1,vect2)
print(matriz)

#2. Crear una matriz con 6 filas y 4 columnas con números del 1 al 24, utilizano la expresión 1:24, y nrow
matriz <- matrix(1:24, nrow = 6,  byrow = TRUE)
print(matriz)

#3. Seleccionar el valor de la fila 3 y columna 4 de la matriz
print(matriz[3,4])

#4. Crear una nueva matriz seleccionando las 3 primeras filas y las 2 primeras columnas
matriz <- matriz[1:3, 1:2]
print(matriz)

#5. A esta nueva matriz, añadirle una columna que sea la suma de los valores de cada fila
Suma <- rowSums(matriz)
matriz <- cbind(matriz, Suma)
print(matriz)


