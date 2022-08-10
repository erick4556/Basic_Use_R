#Histogramas

#install.packages("ggplot2")
#install.packages("ggplot2movies")

library(ggplot2)
library(ggplot2movies)

movies_ <- movies

movies_[c("title", "year", "rating")] #Seleccionar campos especificos del dataset

data <- ggplot(movies_, aes(x=rating)) #Colocar el campo que se colocará en el histograma que este caso es rating por medio de la función aes que sirve para ajustar los ejes

histogram <- data + geom_histogram()

print(histogram)

histogram <- data + geom_histogram(binwidth = 0.3, color="green")

print(histogram)

histogram <- data + geom_histogram(binwidth = 0.3, color="green", fill = "green", alpha = 0.3) #Cambiar color al histograma

print(histogram)

histogram2 <- histogram + xlab("Puntuación") + ylab("Frecuencia") + ggtitle("Histograma") #Agregarle labels y título al histograma

print(histogram2)
