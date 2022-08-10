# Base de datos

#install.packages("RSQLite")

library(RSQLite)
con  <- dbConnect(RSQLite:: SQLite(), "basededatos.db") #Crear y conectarse a una bd

#dbWriteTable(con, "autos", head(mtcars)) #Rellenar con datos una tabla de la bd. Parámetros a pasar son: variable conección, nombre tabla y datos a insertar

dbReadTable(con, "autos") #Leer la tabla. Parámetros son: variable conexión y nombre de la tabla

res <- dbSendQuery(con, "SELECT * FROM autos WHERE cyl = 6") #Consulta a la tablas. Parámetros son: variable de coenxión y el query
dbFetch(res) #Mostrar el resultado por pantalla

#dbClearResult(res) #Eliminar la variable res para eliminar el espacio utilizado
#dbDisconnect(con) #Cerrar la conexión con la bd