numbers <- 1:10
letters <- letters[1:10]

data <- data.frame(col1 = numbers, col2 =letters)

write.csv(data, file="fichero1.csv") #Exportar el data frame a un fichero

data2 <- read.csv("fichero1.csv")
print(data2)

data2$X <- NULL #Quitar una columna donde X es el nombre de la columna
print(data2)