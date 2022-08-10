# Boxplots sirve para representar graficamente una serie de datos numericos a traves de sus cuartiles

library(ggplot2)

data <- mtcars

graphic_ <- ggplot(data, aes(x=factor(cyl), y=mpg)) #factor usara la columna con 3 categorías sin repetirse

graphic_ <- graphic_ + geom_boxplot()

print(graphic_)

graphic_ <- graphic_ + geom_boxplot(fill="green")

print(graphic_)

graphic_ <- graphic_ + geom_boxplot(aes(fill=factor(cyl)))

print(graphic_)

graphic_ <- graphic_ + theme_light() #Cambiar el tema

print(graphic_)
