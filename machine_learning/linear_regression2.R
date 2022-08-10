#install.packages("caTools")
library(caTools)

data <- read.csv("machine_learning/student-mat.csv", sep=";")

set.seed(80) #Para que los valores aleatorios a la hora de descomponer en entrenamiento y prueba los datos sean los mismos que se va hacer
example_ <- sample.split(data$G3, SplitRatio=0.7) #SplitRatio aa tomar el 70% para entrenamiento y el resto para test
training <- subset(data, example_ == TRUE) #Subconjunto de datos
tests <- subset(data, example_ == FALSE)

#Construir el modelo
model <- lm(G3 ~. , training) #Hacer la estimación de G3
print(summary(model))

#Calcular el residuo por medio de una gráfica
residues <- residuals(model)
residues <- as.data.frame(residues) #Pasar los residuos a un data frame

graphic_ <- ggplot(residues, aes(residues)) + geom_histogram(fill="blue", alpha=0.5)
print(graphic_)
