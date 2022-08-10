#Operador pipe %>% sirve para juntar varias operaciones

#install.packages('dplyr')

#install.packages('nycflights13')

library(dplyr)
library(nycflights13)

cars_ <- mtcars

result <- arrange(sample_n(filter(cars_, mpg > 20), size = 5), desc(mpg)) #Ordenar con arrange 5 filas aleatorias con sample_n con las operaciones que paso

#Mismo resultado pero con el uso de pipe
result2 <- cars_ %>% filter(mpg > 20) %>% sample_n(size=5) %>% arrange(desc(mpg))