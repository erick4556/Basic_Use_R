# Funciones

test <- function(name){
 text <- paste("Hello", name)
 print(text)
}

test("Carl")

sumFun <- function(num,num2){
  result <- num + num2
  return(result)
}

result_ <- sumFun(3,7)
print(result_)

vector <- c(1,4,6,8,7)
result_vect <- sum(vector) #Suma elementos del vector
print(result_vect)