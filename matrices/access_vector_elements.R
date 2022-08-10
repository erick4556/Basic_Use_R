#Accesos a los elementos del vector
#El primer elemento es 1 [1]

vect <- c(8,3,4,6,7)

vect[1]
vect[3]

vect[c(1,4,5)] #Acceder a varias columnas por la posición del elemento

vect[2:5] #Devuelve los valores de la columna 2 hasta la 5

#Acceso por nombre de columnas

colum_names <- c("a","b","c","d","e")

names(vect) <- colum_names #Asignar nombres de la columna al vector
print(vect)
print(vect['b']) #Devolver el dato por medio del nombre de la columna
vect[c('a','b','e')] #Colección de columnas

#Seleccionar varias columnas con una desición
vect_over_4 <- vect[vect >= 4]
print("Números mayores o igual que 4")
print(vect_over_4)
#Otra forma
filtr <- (vect >= 5)
print(vect[filtr])

#Ejercicios
sales <- c(120,140,90)
months <- c("Enero", "Febrero", "Marzo")
names(sales) <- months

print("Meses y ventas")
print(sales)

print("Media de ventas")
print(mean(sales))

print("Ventas mayores que 100")
sales_overr_100 <- sales[sales > 100]
print(sales_overr_100)
print("Otra forma")

sales_over_100_2 <- sales > 100
print(sales_over_100_2)
print(sales[sales_over_100_2])

print("Mes con mayores ventas")
month_over_sale <- sales == max(sales)
print(month_over_sale)
print(sales[month_over_sale])





