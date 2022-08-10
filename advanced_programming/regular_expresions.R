#Expresiones regulares: Una forma de buscar una palabra dentro de un texto o dentro de una lista de números

text <- "Hello, how are you?"
grepl("you",text) #Se le pasa la cade que se va a buscar y la variable a analizar

vect <- c(3,2,8)
grep(3, vect) #Para saber en que posición esta el valor buscado