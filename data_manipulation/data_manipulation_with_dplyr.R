#Manipulación de datos

#install.packages('dplyr')

#install.packages('nycflights13')

library(dplyr)
library(nycflights13)

filter(flights, month == 4, day == 10) #Filtro para el dataset de flights

select(flights, origin, dest, air_time) #Seleccionar las columnas de origin, dest, air_time

slice(flights, 1:5) #Permite seleccionar un determinado número de filas según la posición

arrange(flights, year, month, day, dep_time) #Ordenar filas por columnas

arrange(flights, year, month, day, desc(dep_time)) #Ordenar filas por columnas de mayor a menr el dep_time

rename(flights, aerolinea=carrier) #Renombrar columnas, se pasa el dataset como en todas las funciones y el nombre de la columna nuevo con el antiguo

distinct(select(flights, carrier)) #Saber los valores que son único en una columna. Pasa dataset y las columnas

#Calculos por campos
summarise(flights, media=mean(air_time, na.rm=TRUE)) #Sacar la media del campo air_time, na.rm para que no tome los datos nulos.

summarise(flights, suma=sum(air_time, na.rm=TRUE)) #Suma del campo air_time

sample_n(flights, 10) #Mostrar 10 filas aleatorias del dataset
