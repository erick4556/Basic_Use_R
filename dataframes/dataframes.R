# Data frames: Sirven para organizar y mezclar distintos tipos de datos en una única estructura

monthss <- c("Enero","Febrero", "Marzo")
sales <- c(123,190,85)
objectives <- c(TRUE,TRUE, FALSE)

data <- data.frame(monthss, sales, objectives) #Crear un data frame donde se le pasa los datos que lo conformarán
print(data)

str(data) #Saber el tipo de datos de cada una de las columnas
summary(data) #Muestra información sobre cada una de las columnas

#Seleccionar datos en un data frame - Parecido a las matrices
data[1,]
data[,1]
data[2,2]
data[2,"sales"] #Seleccionar 1 fila de la columna ventas
data[1, c("monthss", "objectives")] #Seleccionar varias columnas de la primera fila

subset(data, subset = sales >= 100) #Obtener data frame con las filas que cumplan con lo solicitado

orden <- order(data['sales']) #Ordenar por la columna sales, de menor a mayor

data[orden] #Traer el data frame ordenado por columna, de menor a mayor

ordenDes <- order(-data["sales"]) #Ordenar por la columna sales, de mayor a menor

data[ordenDes,] #Traer el data frame ordenado por columna, de mayor a menor

data$sales #Obtener los datos de ventas por medio de un vecto

data['sales'] #Obtener los datos de ventas  de forma de data frame


#Juntar 2 filas de 1 data frame
numbers <- 1:10
letters <- letters[1:10]

data1 <- data.frame(numbers, letters)

data2 <- data.frame(numbers = 11, letters = "k")

data3 <- rbind(data1, data2)

#Data frame por columnas
numbers2 <- 1:5
letters2 <- letters[1:5]
data_a <- data.frame(col1 = numbers2, col2 = letters2)

data_a$col3 <- data_a$col1 * 2 #Multiplicar valores de la columna por un valor

colnames(data_a) #Devolver nombre de las columnas
colnames(data_a) <- c('c1', 'c2', 'c3') #Cambiar nombre de las columnas por otros
colnames(data_a)[3] <- "New" #Cambiar el nombre de una columna en específico

data_a[data_a$c1 > 3,] #Seleccionar todas las columnas y las filas con el c1 mayor a 3


