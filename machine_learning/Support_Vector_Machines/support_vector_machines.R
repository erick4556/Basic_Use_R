#Maquinas de vectores de soporte - SVM

#install.packages("e1071")

library(ISLR)
library(e1071)

data <- iris #Dataset iris que viene del paquete ISLR

model_ <- svm(Species ~ . , data=data) #Se le pasa la columna que se quiere predecir y la data del dataset

#Hacer las predicciones
Preditions <- predict(model_, data[1:4]) #Se le pasa el modelo y las 4 primeras columnas que contienen las características
#print(predictions) #Predicciones que realiza el modelo para cada una de las filas

table_ <- data.frame(data, Preditions) #Data frame de las predicciones
print(table_)

