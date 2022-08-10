#Selección de elementos en una matriz

matriz <- matrix(1:25, nrow = 5, byrow = T)

matriz[1,2] #Seleccionar de la fila 1 la columna 2

matriz[3,] #Seleccionar toda la fila

matriz[,4] #Seleccionar toda la columna

matriz[,2:4] #Selecciona desde la columna 2 hasta la 4

matriz[3:5,] #Seleccionar desde la fila 3 hasta la 5

matriz[3:5, 2:4] #Seleccionar desde la fila 3 a la 5 y de la columna 2 hasta la 4