library(ggplot2)
library(readxl)

pacientes <- read_excel("C:/Users/rafa2/Desktop/PE/Utentes.xlsx",na ="NA")

df <- data.frame(pacientes$Idade ,pacientes$TAD)

ggplot(df,aes(x=pacientes$Idade , y = pacientes$TAD)) + geom_point() + 
  ggtitle("Relacao entre a idade e a TAD dos pacientes.") +
  xlab("Idade") + ylab("TAD") + geom_smooth(method = lm , se = FALSE , col = "green") +
  scale_x_continuous(limits=c(0, 75)) +
  scale_y_continuous(limits=c(0, 130))