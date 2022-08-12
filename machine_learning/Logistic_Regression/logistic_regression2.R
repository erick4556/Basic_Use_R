#install.packages("Amelia")

#library(Amelia)

#Limpiar los valores nulos

missmap(data, main="Verificar valores nulos", col= c("red", "black"))

ageFun <- function(age,class_) {
  out <- age
  for (i in 1:length(age)) {
    if (is.na(age[i])) { #Verificar si es nulo el campo age
      if (class_[i] == 1) {
        out[i] <- 38
      } else if (class_[i] == 2) {
        out[i] <- 29
      } else {
        out[i] <- 23
      }
    } else {
      out[i] <- age[i]
    }
  }
  return(out)
}

ages <- ageFun(data$Age, data$Pclass)
data$Age <- ages

missmap(data, main="Verificar valores nulos", col= c("red", "black"))


