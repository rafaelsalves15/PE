library(ggplot2)

Paises=c("HU - Hungria ","HU - Hungria ", "HR - Croácia","HR - Croácia" , "PT - Portugal", "PT - Portugal") 
ResiduosPerCapita=c(2.4,1.9,1.7,1.4,2.8,1.5)
Anos=c("2004","2018","2004","2018","2004","2018")


df=data.frame(Paises,Anos, ResiduosPerCapita)

ggplot(df, aes(x = Paises, y = ResiduosPerCapita, fill = Anos))+ggtitle("Produção de resíduos per capita na Hungria,Croacia e Portugal,
                                nos anos 2004 e 2018.
") + geom_bar(position ='dodge', stat = 'identity')
