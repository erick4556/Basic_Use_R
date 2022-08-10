#Operaciones aritméticas con matrices

matriz <- matrix(1:16, nrow=4, byrow=TRUE)
print(matriz)

matriz <- matriz + 5 #Suma 5 a cada uno de los elementos de la matriz, asi se puede hacer con cualquier operación

matriz_filter <- matriz > 10

print(matriz[matriz_filter])

#Operaciones con filas y columnas en matrices

company1 <- c(40,160,120)
company2 <- c(130,50,80)

sales <- c(company1,company2)

matriz <- matrix(sales, nrow = 2, byrow = TRUE)
print(matriz)

monthss <- c("Enero", "Febrero", "Marzo")
companies<-c("Empresa1", "Empresa2")

colnames(matriz) <- monthss
rownames(matriz) <- companies
print(matriz)

print(colSums(matriz)) #Sumar las columnas
print(rowSums(matriz)) #Sumar las filas
print(rowMeans(matriz)) #Media de las filas

Empresa3 <- c(90,30,75)
matriz <- rbind(matriz, Empresa3) #Añadir una nueva fila a la matriz

Media <- rowMeans(matriz) #Sacar la media de las filas
matriz <- cbind(matriz,Media) #Añadir una nuenva columna a la matriz
print(matriz)



