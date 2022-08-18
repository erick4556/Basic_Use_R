#Redes Neuronales

#install.packages("MASS")
#install.packages("neuralnet")

library(MASS)
library(neuralnet)
library(ggplot2)

data <- Boston #Dataset

any(is.na(data)) #Ver si hay algun valor nulo

maximum_ <- apply(data, 2, max) #Devolver los valores máximos de cada una de las columnas
minimum_ <- apply(data, 2, min) #Devolver los valores minimos de cada una de las columnas

normalized_data <- scale(data, center=minimum_, scale=maximum_ - minimum_) #Normalizar los datos

normalized_data <- as.data.frame(normalized_data)

#print(head(normalized_data))

#Dividir los datos normalizados en datos de entrenamiento y de prueba

library(caTools)

division <- sample.split(normalized_data$medv, SplitRatio = 0.7) #Se usa 70% para entrenamiento y el 30% para prueba

training <- subset(normalized_data, division==TRUE) #Subconjunto de datos para entrenamiento

tests_ <- subset(normalized_data, division=FALSE) #Subconjunto de datos para pruebas

formula <- medv ~ crim + zn + indus + chas + nox + rm + age + dis + rad + tax + ptratio + black + lstat

#Crear el modelo de red neuronal

neural_net <- neuralnet(formula, data=training, hidden= c(5,3), linear.output = TRUE) #c(5,3) capas ocultas, dos capas ocultas una de 5 y otra de 3

#plot(neural_net) #Gráfica de la red neuronal

#Calcular las predicciones

preditions <- compute(neural_net, tests_[1:13]) #Se selecciona las columnas del 1 hasta el 13

#Desnormalizar los datos

correct_preditions <- preditions$net.result * (max(data$medv) - min(data$medv)) + min(data$med)

converted_tests <- (tests_$medv) * (max(data$medv) - min(data$medv)) + min(data$medv)

error <- sum((converted_tests - correct_preditions) ^ 2) / nrow(tests_) #Calcular el error que se produce al hacer la estimación

print(error)

errors <- data.frame(converted_tests, correct_preditions)

print(errors)

graph_ <- ggplot(errors, aes(x=converted_tests, y=correct_preditions))
graph_ <- graph_ + geom_point()
print(graph_)
 
