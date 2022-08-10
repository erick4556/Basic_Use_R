#Listas

vector <- 1:10
matriz <- matrix(1:30, nrow=3)
data <- mtcars

list_ <- list(vector, matriz, data)

list_[[1]] #Acceder a los elementos de la lista por número

list_2 <- list(vect = vector, matriz_t = matriz, data = data) #Ponerle nombre a lista
list_2$matriz_t #Acceder por medio del nombre de la lista
list_2['data'] #Acceder por medio de nombre del elemento

matriz2 <- list_2$matriz_t