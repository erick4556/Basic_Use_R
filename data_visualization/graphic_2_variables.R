#Distribución de 2 variables

library(ggplot2)
library(ggplot2movies)

movies_ <- movies #Uso del paquete ggplot2movies el data set movies

graphic_ <- ggplot(movies, aes(x=year, y=rating)) #Le agrego los ejes por medio de aes
graphic_ <- graphic_ + geom_bin2d() #Le digo el tipo de gráfico que quiero con geom_bind2d()
print(graphic_)

graphic_ <- graphic_ + scale_fill_gradient(low="blue", high="red") #Agregarle mejor color a la escala gráfica
print(graphic_)

#Agregar otra función de geom
graphic_ <- ggplot(movies, aes(x=year, y=rating))
graphic_ <- graphic_ + geom_density2d()
print(graphic_)
