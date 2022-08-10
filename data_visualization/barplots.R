#Barplots es una gráfica con un única varibale discreta

library(ggplot2)

data <- mpg

graphic_ <- ggplot(data, aes(x=class))

graphic_ <- graphic_ + geom_bar()

print(graphic_)

graphic_ <- graphic_ + geom_bar(color="red", fill="blue") #Ajustar el color y relleno de la gráfica

print(graphic_)

graphic_ <- graphic_ + geom_bar(aes(fill=drv)) #Rellenar con los colores de drv, se comparan 2 columna (class y count) sabiendo que tipo son por medio de la columna drv

print(graphic_)
