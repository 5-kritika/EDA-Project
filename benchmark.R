###### Worksheet5
install.packages("profvis")

library(profvis)
profvis({
  blow <- function(age){
    count <- 0
    remain <- age
    while(remain > 0)
    {
      blown <- sample(1:age, size=1)
      remain <- remain - blown
      count <- count +1
    }
    return(count)
  }
  
  
 res <- replicate(1000, blow(25))
})
  
install.packages("rbenchmark")
library(rbenchmark)



benchmark(
  { total <- numeric(length = 1000)
  
  for(i in 1:1000){
    
    total[i] <- blow(25)
  }
  total
    
  
  }, replicate(1000, blow(25)), replications = 100)
})


benchmark(
  { total <- numeric(length = 10000)
  
  for(i in 1:1000){
    
    total[i] <- blow(25)
  }
  total
  
  
  }, replicate(10000, blow(25)), replications = 20)
})


######Q5

mat <- matrix(data = runif(n =6, min = 0,max = 1),nrow = 3, ncol=2)
mat

colMeans(mat)

mean <- apply(mat,2,mean)
mean


benchmark(
  {
    mat <- matrix(data = runif(n =6, min = 0,max = 1),nrow = 3, ncol=2)
    mat
    
    colMeans(mat)
  },
  {mean <- apply(mat,2,mean)
  mean}
)

mat2 <- matrix(runif(n=3000, min = 0,max = 1),nrow = 50,ncol = 60)


colMeans(mat2)

means <- apply(mat2, 2,mean)
means

benchmark(
  {
    mat2 <- matrix(runif(n=3000, min = 0,max = 1),nrow = 50,ncol = 60)
    
    
    colMeans(mat2)
  },
  {
    mat2 <- matrix(runif(n=3000, min = 0,max = 1),nrow = 50,ncol = 60)
    means <- apply(mat2, 2,mean)
  }
)


r <- 1000
real <- numeric(length = r)
for (i in 1:length(real)) {
  real[i] <- runif(1,0,1)
  
}


real1 <- runif(n= 1000,0,1)



benchmark(
  {
    r <- 1000
    real <- numeric(length = r)
    for (i in 1:length(real)) {
      real[i] <- runif(1,0,1)
      
    }
  },
  {
    real1 <- runif(n= 1000,0,1)  
  }
)
######object size

num1 <- numeric(length = 1e3)
num2 <- numeric(length = 1e6)
mat1 <- matrix(runif(100*1000), nrow = 100, ncol = 1000)
mat2 <- matrix(0, nrow = 100, ncol = 1000)
arr <- array(0, dim = c(100,100,100))

object.size(num1)
object.size(num2)
object.size(arr)

r <- "hello world!"
object.size(r)



