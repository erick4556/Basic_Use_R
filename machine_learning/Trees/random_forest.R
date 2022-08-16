# Random Forest

#install.packages("randomForest")

library(randomForest)

model_ <- randomForest(Kyphosis ~ . , data=data) #Se pasa la columna del dataset y el dataset

model_$predicted #Obtener las predicciones que realiza el algoritmo de random fores

