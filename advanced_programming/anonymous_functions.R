# Funciones anónimas

vect <- c(1,2,4,7)
vect2 <- sapply(vect, function(n){
  n + 2
})

print(vect2)