#Plotly para crear gráficos interactivos

#install.packages("plotly")
#install.packages("ggplot2")

library(plotly)
library(ggplot2)


data <- mtcars


graphic_ <- ggplot(data, aes(mpg,wt)) + geom_point() #Scatterplots
print(graphic_)

graphic_2 <- ggplotly(graphic_)
#print(graphic_2)

set.seed(1234)

dfGamma = data.frame(nu75 = rgamma(100, 0.75),
                     nu1 = rgamma(100, 1),
                     nu2 = rgamma(100, 2))

dfGamma = stack(dfGamma)

p <- ggplot(dfGamma, aes(x = values)) +
  stat_density(aes(group = ind, color = ind),position="identity",geom="line")

fig <- ggplotly(p)

print(fig)