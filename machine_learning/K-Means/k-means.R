#K-medias

library(ISLR)
library(ggplot2)
library(cluster)

data <- iris

graph_ <- ggplot(data, aes(Petal.Length, Petal.Width, color=Species))
graph_ <- graph_ + geom_point(size=5)
print(graph_)

set.seed(90) #Poner la semilla

set_ <- kmeans(data[, 1:4], 3, nstart = 20) #data[, 1:4] todas las filas y las primeras 4 columnas, 3 significa que hay 3 conjuntos de especies

table(set_$cluster, data$Species) #Ver la tabla de los conjuntos

clusplot(data, set_$cluster, color=TRUE, shade=TRUE, label=0, lines=0) #Ver la agrupación de las especies que se tienen en el dataset
