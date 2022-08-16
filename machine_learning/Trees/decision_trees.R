#Árboles de decisión

#install.packages("rpart")
#install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

data <- kyphosis #Dataset


tree <- rpart(kyphosis, data) #Se le pasa la columna que va a predecir y el dataset

#printcp(tree) #Este print es para dar información sobre el árbol

plot(tree, uniform = TRUE, main="Arbol de Decisión") #Dibujar el árbol

text(tree, use.n = TRUE, all = TRUE) #Agregar todas las etiquetas al árbol

prp(tree) #Visualizar el árbol
