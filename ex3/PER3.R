library(readxl)
library(ggplot2)

dados <- read_excel("C:/Users/rafa2/Desktop/PE/QualidadeARO3.xlsx",range=cell_cols('E' , 'H') ) 

oz <- as.numeric(c(dados$`Laranjeiro-Almada`,dados$Restelo))

estacoes <- rep(c("Laranjeiro-Almada","Restelo ") , each = 8784) 

df = data.frame(oz,estacoes)

ggplot(df, aes(x=oz,fill=estacoes))+geom_histogram(binwidth =5)+
  ggtitle("Valores dos níveis de ozono registados nas estações 
          de Restelo e Laranjeiro-Almada em 2020") + xlab("Nivel")+ ylab("Valor do nivel de ozono")