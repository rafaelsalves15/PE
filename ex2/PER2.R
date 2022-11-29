library(ggplot2)
library(readxl)


esperancaDeVida <- read_excel("C:/Users/rafa2/Desktop/PE/EsperancaVida.xlsx",range="A52:CG69",col_names = FALSE)

valores <- esperancaDeVida[c(40,43 ,51 ,74 ,77 ,85)]  #1st homens 2nd mulheres
valores= c(valores[[1]],valores[[2]],valores[[3]],valores[[4]],valores[[5]],valores[[6]])

Paises <- rep(c("AT-Austria - Homens " ,"CY-Chipre - Homens", "FR-Franca - Homens", 
                "AT-Austria - Mulheres","CY-Chipre - Mulheres", "FR-Franca - Mulheres"  ),each = 18)
Anos <-  rep(c(2002:2019),6)

esperanca = data.frame(Anos,Paises,valores)
ggplot(esperanca,aes(x=Anos , y = valores , fill =Paises)) + ggtitle("Esperança de vida à nascença das mulheres e dos homens,
entre 2002 e 2019,nos países AT - Austria, FR - Franca e CY - Chipre.") + 
  xlab("Anos") + ylab("E. Média de Vida")  + geom_line(aes(color=Paises))