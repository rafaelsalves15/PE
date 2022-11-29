library(ggplot2)

set.seed(1732)
n=5
med = (4 + 0) / 2

for ( i in 1:920){
  if ( i == 1 ){
    data = c()
    new =  mean(runif(n , min = 0 , max = 4) )  
    data = c( data , new ) }
  else  {
    new =  mean(runif(n , min = 0 , max = 4) ) 
    data = c( data , new ) }
}  
  

df = data.frame(data)

var = ((4- 0 )^2)/12 
varn = var / n 
varn = sqrt(varn)

ggplot(df , aes(x=data)) + geom_histogram(bins=40,color ="red",aes(y=..density..) ) +ggtitle("Valor n = 53") +
    stat_function(fun=dnorm,args= list(mean =med, sd = varn),color = "blue",size=1)
