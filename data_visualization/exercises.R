#1. 1 Variable continua

library(ggplot2)
data <- mpg

graphic_ <- ggplot(data, aes(x=cty))
graphic_ <- graphic_ + geom_histogram(fill="green", alpha=0.5, bins=30) #alpha para la transparencia
graphic_ <- graphic_ + ggtitle("Dataset = mpg")
print(graphic_)

#2 1 Variable discreta o tipo categórica
data_2 <- mpg
graphic_2 <- ggplot(data_2, aes(x=manufacturer))
graphic_2 <- graphic_2 + geom_bar()
print(graphic_2)
graphic_2 <- graphic_2 + geom_bar(aes(fill=factor(cyl))) #factor para categorizar y aplicarlo como relleno
graphic_2 <- graphic_2 + ggtitle("Dataset = mpg")
print(graphic_2)

#3 2 varibales continuas
data_3 <- txhousing
graphic_3 <- ggplot(data_3, aes(x=sales, y=volume))
graphic_3 <-graphic_3 + geom_point(color="blue", alpha = 0.4)
print(graphic_3)

graphic_3 <- graphic_3 + geom_smooth(color="red") #Agregar la línea
print(graphic_3)

