seq(1,10) #Crear secuencias de datos
seq(1,10, by=2) #Va de 2 en 2 el vector

vect <- c(1,7,12,4,2)
sort(vect) #Ordenar elementos de un vector
vect2 <- c("f", "b", "a", "e")
sort(vect2)

rev(c(1,2,3,4,5,8,6)) #Dar la vuelta a los elementos de un vector

str(mtcars)#Ver la estructura de un objeto

summary(mtcars) #Ver información sobre cada una de las columnas

append(vect,vect2) #Unir objetos

is #Para saber que tipo de dato es
is.vector(vect)

#Convertir un objeto en otro tipo de objeto
list_ <- as.list(vect)
matriz <- as.matrix(vect)