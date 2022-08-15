#Algoritmo k vecinos más cercanos = KNN

#install.packages("ISLR")

library(ISLR)

data <- Caravan #Dataset del paquete ISLR

#Separar el dataset en datos pruebas para hacer estimaciones y de entrenamiento para entrenar el modelo

data.compra <- data[, 86]

data.estandarizados <- scale(data[, -86]) #Seleccionar todas las columnas menos la 86, seleccionar todas las fila y menos la columna 86

rows_ <- 1:1000

tests.data <- data.estandarizados[rows_,] #Seleccionar las primeras 1000 filas
tests.pruchase <- data.compra[rows_] #Igual, se selecciona las primeras 1000 filas

trainig.data <- data.estandarizados[-rows_,] #Las otras filas después de 1000, pasarían a ser datos de entrenamiento
trainig.purchase <- data.compra[-rows_]#Igual, las otras filas después de 1000

#Ejecutar el modelo y obtener las predicciones
library(class)

set.seed(90)

purchase_prediction <- knn(trainig.data, tests.data, trainig.purchase, k=1) #k=1 significa que tiene solo 1 vecino cercano haciendo la estimación

error <- mean(tests.pruchase != purchase_prediction)
#print(error) #Seria % que el modelo se equivoca

purchase_prediction <- NULL
errors <- NULL

for(x in 1:20){
  set.seed(90)
  purchase_prediction <- knn(trainig.data, tests.data, trainig.purchase, k=x)
  errors[x] <- mean(tests.pruchase != purchase_prediction)
}
print(errors)

#Crear tabla de errores
values_k <- 1:20
errors_table <- data.frame(errors, values_k)
print(errors_table) #Aqui se puede ver los valores y el valor con error más bajo es el modelo más óptimo para el dataset


