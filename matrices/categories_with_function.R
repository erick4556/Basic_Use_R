#Categorías -  función factor

animals <- c("gato", "perro", "mono", "perro")

factor(animals) #Para identificar que palabras no se repiten

summary(factor(animals)) #Para saber cuantos elementos hay de cada elemnento

temperatures <- c("frio", "templado", "templado", "caliente", "caliente", "frio", "frio")
temperatures_ordered <- factor(temperatures, ordered=TRUE, levels = c('frio', "templado", "caliente")) #Ordenar por elementos deseados