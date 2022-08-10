#Aplicar funciones sobre un vector

vect <- c(1,3,7)

sum_ <- function(number){
  result <- number + 10
  return(result)
}

print(vect)

vect2 <- sapply(vect, sum_) #Aplicar sobre un vector la función. Devuelve un vector
print(vect2)

#Aplicar una función sobre una lista

list_ <- list(1,5,8)

randomFun <- function(number){
  random_number <- sample(1:100,1) #Generar números aleatorios, se le pasa el rango y el número de elementos que se va a generar
  print("Número aleatorio")
  print(random_number)
  result <- number + random_number
  return(result)
}

print(list_)

list_2 <- lapply(list_, randomFun) #Aplicar sobre una lista la función. Devuelve una lista

print(list_2)