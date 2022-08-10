#Scatterplots es un gráfico con 2 variables continuas

library(ggplot2)

cars_ <- mtcars

graphic_ <- ggplot(cars_, aes(x=disp, y=mpg))

graphic_ <- graphic_ + geom_point()

print(graphic_)
 
graphic_ <- graphic_ + geom_point(size = 8, alpha = 0.4) #Cambiar tamaño de los puntos y transparencia median alpha

print(graphic_)

graphic_ <- graphic_ + geom_point(size = 8, color = "red" ,alpha = 0.4)

print(graphic_)

graphic_ <- graphic_ + geom_point(size = 8, color = "#2717C4")

print(graphic_)

graphic_ <- graphic_ + geom_point(aes(size=wt)) #Configurar tamaño del punto en función a una columna

print(graphic_)

#Combinar tre variables con una gráfica de colores gradientes en función de la columna hp, se compara 3 variables

graphic_2 <- ggplot(cars_, aes(x=disp, y=mpg))

graphic_2 <- graphic_2 + geom_point(size=8, aes(color=hp)) #Colocar el color en función de otra columna

graphic_2 <- graphic_2 + scale_color_gradient(low="blue", high="red") #Colocar la escala de colores de acuerdo a la columna hp

print(graphic_2)