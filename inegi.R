install.packages("inegiR")

library(ggplot2)
library(inegiR)

token <- "178c322b-75b9-4b93-a9dc-d86adaf5b570"
lat <- 19.378848
long <- -99.142422
metros <- 1000
keyword <- "mecanico"

negocios <- denue_inegi(lat, long, token, metros, keyword)

ab <- ggplot(negocios, aes(x=Latitud,y=Longitud))+ 
  geom_point(aes(color=Estrato))+
  theme(axis.text.y = element_blank(),
        axis.text.x = element_blank())
ab
ab + facet_grid(~Estrato)
