#Vectores
vector <- c(1,2,3,4)

vector2 = c(TRUE, FALSE, T, F, TRUE)

vector3 <- c("a","b", "c", "d")

#Los vectores tienen que ser del mismo tipo. Convierte los tipos que son diferentes para que sean del mismo tipo.
vector4 <- c(TRUE,10, 30) 

vector5 <- c(4,3,2,"Hello")

#Poner nombre a las columnas
monthsTest <- c("Enero", "Febrero", "Marzo")
sales <- c(100,45,80)

#Asociar los 2 vectores, para asignarle el nombre a cada uno de los valores de ventas
names(sales) <- monthsTest
print(sales)

#Operaciones
vect1 <- c(1,4,9)
vect2 <- c(10,6,8)
print(vect1 + vect2)
print(vect1 - vect2)
print(vect1 * vect2)
print(vect1 / vect2)
vect.result = vect1 * vect2
print(vect.result)

print(sum(vect1))
print(mean(vect2)) #La media
print(sd(vect2)) #Desviación típica
print(max(vect1))
print(min(vect2))

valMin <- min(vect2)

print(prod(vect2)) #Multiplicar todos los elementos del vector




