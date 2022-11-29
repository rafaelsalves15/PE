  library(ggplo2)
  set.seed(623)
  m=750
  n_arr = seq( 100 ,  5000 , 100)
  lam= 1.26
  one_alpha  =  0.97 
  alpha = 0.03
  A = c()
  MA = c()
  j=1
  

  for ( i in n_arr){
    while( j < m ){
      j=j+1
      x  =mean(rexp(i,lam))
      y = sd( rexp(i ,lam))
      lower = x - one_alpha*y 
      lower_sqrt = lower / sqrt(i)
      
      upper = x + one_alpha*y
      upper_sqrt = upper / sqrt(i)
      
      diff = upper_sqrt - lower_sqrt
      A  = c(A , diff)
    }
    j=1
    new_MA = mean(A)
    MA = c(MA , new_MA)
  }
  plot(MA, xlab= "n " ,ylab="Media das Amplitudes", col = "blue")