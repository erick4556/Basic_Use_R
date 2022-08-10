# Ficheros Excel

#install.packages("readxl")

library(readxl) #Cargar la librería

excel_sheets('poblacion.xlsx') #Devuelve el nombre de la hoja

data <- read_excel("poblacion.xlsx", sheet= "Hoja 1") #Obtener la información de una hoja de excel

data$Continente #Acceder a la columna continente

excel <- lapply(excel_sheets("poblacion.xlsx"), read_excel, path="poblacion.xlsx") #Leer todas las hojas de un fichero de excel

#Grabar datos en u fichero de excel
#install.packages("xlsx")

library(xlsx) #Cargar la librería

data2 <- head(mtcars)

write.xlsx(data2, "fichero2.xlsx") #Grabar los datos en un ficher xlsx