#Rergesión Logística

library(ggplot2)

data <- read.csv("machine_learning/titanic.csv")

graphic_ <- ggplot(data, aes(Survived)) + geom_bar()

print(graphic_)

graphic_ <- ggplot(data, aes(Pclass)) + geom_bar(aes(fill=factor(Pclass))) #factor para factorizar los datos por colores

print(graphic_)

graphic_ <- ggplot(data, aes(Sex)) + geom_bar(aes(fill=factor(Sex)))

print(graphic_)

graphic_ <- ggplot(data, aes(Age)) + geom_histogram(bins=20, alpha=0.5, fill="green")

#print(graphic_)

#Compara 2 campos Pclass y Age
graphic_ <- ggplot(data, aes(Pclass, Age))
graphic_ <- graphic_ + geom_boxplot(aes(group = Pclass, fill=factor(Pclass), alpha=0.5))
                                    
print(graphic_)                              
