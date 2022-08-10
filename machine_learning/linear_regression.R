#Regresión lineal

#install.packages("ggthemes")
#install.packages("corrgram")
#install.packages("corrplot")

data <- read.csv("machine_learning/student-mat.csv", sep=";")

any(is.na(data)) #Ver si el dataset tiene algún valor nulo

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

numeric_columns <- sapply(data, is.numeric) #Seleccionar solo los datos numéricos
correlation_data <- cor(data[numeric_columns]) #Sacar la correlación solo las columnas numéricas

graphic_ <- corrplot(correlation_data, method="color") #Gráfico de la correlación de columnas
print(graphic_)

#corrgram(data) #Correlación de todas las columnas

graphic_2 <- ggplot(data, aes(x=G3)) + geom_histogram(bins=20, alpha=0.5, fill="blue")
print(graphic_2)