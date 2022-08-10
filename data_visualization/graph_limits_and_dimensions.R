#Límites y dimensiones

library(ggplot2)

data <- mpg #Cargo el dataset mpg 

#Se hace un scatterplots
graphic_ <- ggplot(data, aes(x=displ, y=hwy))
graphic_ <- graphic_ + geom_point() #Se usa por que tiene 2 variables continuas, tiene 2 columnas con valores numericos de forma continua, se usa el scatterplots
print(graphic_)  

graphic_ <- graphic_ + coord_cartesian(xlim=c(2,5), ylim=c(20,30)) #Se agregar los ejes en las coordenadas cartesianas que se va a tomar el gráfico para mejor análisis

print(graphic_)  


#Cambiar las dimensiones del gráfico
graphic_ <- ggplot(data, aes(x=displ, y=hwy))
graphic_ <- graphic_ + geom_point()
graphic_ <- graphic_ + coord_fixed(ratio=1/3) #Ajustar que el eje de "y" tiene 3 veces su tamaño
print(graphic_)