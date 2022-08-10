#Ejercicios

#1. Crear un dataframe con 3 personas con su nombre, edad y sexo

names <- c("Antonio", "María", "Juan")
ages <- c(40, 30, 35)
sex <- c('M', 'F', 'M')

data <- data.frame(names, ages, sex)
print(data)

#2. Crear la variable cars que almacene los datos del dataset mtcars
cars <- mtcars

#3. Verificar si cars es un dataframe
is.data.frame(cars)

#4. Imprimir las primeras 6 líneas de la variable de coches
head(cars)
head(cars, 8) #Para imprimir más líneas

#5. Cuál es la media dela columna mpg
mean(cars$mpg)

#6. Cual es el valor de cyl para el coche Mazda RX4
carsMazda <- cars['Mazda RX4',]
carsMazda$cyl

#7. Selecciona las filas de coches donde la columna cyl es igual a 8 y la columna disp > 400
cars[cars$cyl == 8 & cars$disp > 400,]
#Otra forma
subset(cars, cyl == 8 & disp > 400)

#8 Selecciona las columnas disp y wt
cars[, c("cyl", "disp")]

#9 Crear una nueva columna, rendimiento que sea igual a hp/wt
cars$rendimiento <- cars$hp / cars$wt



