library(dplyr)
library(caTools)
#data <- select(data,  -PassengerId, -Name, -Ticket, -Cabin) #Eliminar las columnas que no se va a usar, Name, etc

#Categorizar las columnas
data$Survived <- factor(data$Survived)
data$Pclass <- factor(data$Pclass)
data$Parch <- factor(data$Parch)
data$SibSp <- factor(data$SibSp)

set.seed(90)
division <- sample.split(data$Survived, SplitRatio = 0.7) #70% se usará para entrenamiento y el otro 30% para para hacer las predicciones
training <- subset(data, division=TRUE) #Coje el 70%
tests <- subset(data, division=FALSE) #Coje el 30%

#Entrenar el modelo
model_ <- glm(Survived  ~ . , family=binomial(link='logit'), data=training) #Hacer la predicción de Survived. Los columnas con *** son consideradas más importantes

#Hacer las predicciones
predictions <- predict(model_, tests, type="response")

results <- ifelse(predictions > 0.5, 1, 0) #Si es mayor a 0,5 asigna 1 y si es menor asigna 0. 1 vive y 0 no


error <- mean(results != tests$Survived)

accuracy <- 1 - error #Calcular la precisión. Es la precisión de sobrevivir de un pasajero

