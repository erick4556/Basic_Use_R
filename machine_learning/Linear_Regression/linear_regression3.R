#plot(model) #Muestra diferentes gráficos estadísticos del modelo

predictions <- predict(model, tests)
results <- cbind(predictions, tests$G3) #Combinar 2 columnas
colnames(results) <- c("prediction", "real") #Poner nombre de las columnas
results <- as.data.frame(results)
print(head(results))

cero <- function(x){
  if(x<0){
    return(0)
  }else{
    return(x)
  }
}

results$prediction <- sapply(results$prediction, cero)

#Evaluar el modelo
error <- mean((results$real - results$prediction)^2) #Error cuadrático medio
print(error)

#Calcular un valor que devuelve si el modelo se ajusta o no al valor real
sse <- sum((results$prediction - results$real) ^2)
sst <- sum((mean(data$G3) - results$real) ^2)

result_ <- 1 - sse/sst

print(result_) #Se acerca a 1 y quiere decir que el modelo se ajusta bien para hacer predicciones sobre el dataset

