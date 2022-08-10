#Manejo de valores nulos

#is.na(mtcars) #Para saber si existe valores nulo

any(is.na(mtcars)) #Para saber si existe algun valor nulo en el data frame

mtcars[is.na(mtcars)] <- 0 #Si existe un valor nulo en el data frame le ponga 0