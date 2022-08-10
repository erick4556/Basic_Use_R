# Sentencias condicionales

number <- 10

if (number > 10) {
  print("Número es mayor que 10")
} else {
  print("Número es menor que 10")
}

if (number >= 10) {
    print("Número es mayor que 10")
} else if (number > 5){
  print("Número es mayor que 5 pero menor o igual a 10")
}else{
  print("Número es menor o igual que 5")
}

# Bucle while
number2 <- 1
while (number2 < 10){
  text_ <- paste("El número vale", number2) #Concatenar datos
  print(text_)
    
  if(number2 == 7){ #Rompe cuando el número es 7
    break
  }
  
  number2 <- number2 + 1
}

# Bucler for
vector <- c(1,3,5,16,8)

for(x in vector){
  print(x)
}

print("Lista")
list_ <- list(12, c(3,4,3), mtcars)
for(x in list_){
  print(x)
}

print("Matriz")
matriz <- matrix(1:9, nrow = 3)
for(x in matriz){
  print(x)
}





