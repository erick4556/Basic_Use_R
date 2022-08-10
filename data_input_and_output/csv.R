# Ficheros .csv

matriz <- matrix(1:16, nrow = 4)

write.csv(matriz, file="file.csv") #Escribir el csv con los datos

data <- read.csv("file.csv") #Leer de un fichero csv

data$X <- NULL #Elimina la columna que se quiera del data frame

data$suma <- data$V1 + data$V2+ data$V3 + data$V4  #Añadir una columna que sea la suma

write.csv(data, file="file2.csv")