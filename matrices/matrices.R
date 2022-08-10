#Matrices
vect1 <- 1:10
matriz <- matrix(vect1)
print(matriz)

matriz <- matrix(vect1, nrow=2) #Matriz de 2 filas
print(matriz)

matriz <- matrix(vect1, nrow=2, byrow=TRUE) #Ordenar por filas
print(matriz)

company1 <- c(100,200,300)
company2 <- c(50,78,190)

sales <- c(company1, company2)
print(sales)

matriz_sales <- matrix(sales, nrow=2, byrow=TRUE)
print(matriz_sales)

monthss <- c("Enero", "Febrero", "Marzo")
colnames(matriz_sales) <- monthss #Poner nombres de las columnas
print(matriz_sales)

companies <- c("Company1", "Compnay2")
rownames(matriz_sales) <- companies #Poner nombres de las filas
print(matriz_sales)
