#Limpieza de datos

#install.packages("tidyr")
#install.packages("data.table")

#Cargar las librerías
library(tidyr)
library(data.table)

year <- c(2017, 2019, 2020)
january <- c(120, 180, 200)
february <- c(80, 90, 140)
march <- c(110, 75, 95)
data_ <- data.frame(año=year, enero=january, febrero=february, marzo=march) #Unir todo en un data frame
print(data_)
data_2 <- gather(data_, Mes, Ingresos, enero:marzo) #gather() #Sirve para unir varias columnas en una única columna con una clave valor

data_2 <- spread(data_2, Mes, Ingresos) #Para dejar el data frame como estaba, excluiar las columnas

data_3 <- data.frame(columna=c("a,b", "c.d", "e.f"))
print(data_3)
data_3 <- separate(data_3, columna, c("c1", "c2")) #Separar los valores de una columna en varias columnas, se pasa el dataframe, la columna a separar y el nombre de las 2 nuevas columnas
print(data_3)
data_3 <- unite(data_3, columna, c1,c2, sep=".") #Unir las columnas a como estaba, se pasa el data frame, la columna a unir, las columnas y por cual caracter a unir
print(data_3)



