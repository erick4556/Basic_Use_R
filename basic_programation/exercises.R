# Ejercicios

#1. Verificcar si un número es par o impar

checkParImp <- function(num){
  if(num %% 2 == 0){
    print("Par")
  }else{
    print("Impar")
  }
}

checkParImp(8)

#2. Verificar si el valor es un número o carácter

value <- 9

if(is.numeric(value)){
  print("Es un número")
}else if (is.character(value)){
  print("Es un carácter")
}else{
  print("No es número ni un carácter")
}

#3. Crear una función que calcule la media de dos números pasados como parámetros

checkMean <- function(num,num2){
  result <- (num + num2) / 2
  return(result)
}

print(checkMean(14,8))

#4. Crear una función que sume todos los elementos de una matriz


matrizSum <- function(matr){
  print(matr)
  #result <- sum(matr)
  suma <- 0
  for(x in matr){
    suma <- suma + x
  }
  return(suma)
}

print(matrizSum(matrix(1:8, nrow = 4)))
