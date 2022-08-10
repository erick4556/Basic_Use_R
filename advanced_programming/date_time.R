#Fecha y hora

date <- Sys.Date()

date2 <- "2023-07-19"

date2 <- as.Date(date2) #Convertir a formato fecha

date3 <- as.Date("04-05-2022", format="%m-%d-%y") #Indicar en que formato viene la fecha

time <-Sys.time()
format(Sys.time(), format="%H:%M:%S") #Formatear la hora

strptime("12:00:00", format="%H:%M:%S") #Crear formato fecha y hora a partir de una hora