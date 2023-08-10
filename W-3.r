result <- rbinom(n = 5, size = 1, prob = 0.5)

i <- 1
for (i in result){
  i <- i+1
}
i

length(result)

sum(result)

sum(result)/length(result)
#b

tosses <- rbinom(n = 1000, size = 1, prob = 0.30)
sum(tosses)
length(tosses)

sum(tosses)/length(tosses)


#Q2 a
sample(x = 1:3, size = 1,prob = c(3/7,2/7,2/7))

#another way

probs <- c(3/7,2/7,2/7)
col <- c("red","green","blue")
sample(col, size = 1,prob = probs,TRUE)

#foo ==sample("red", size = 1,prob = probs,TRUE)
mean(foo)


#Q2 B
A <- matrix(c(3, 1, -2, 4, 5, 3, -1, 2, -2), nrow = 3, ncol = 3)
A
norm(A)
norm(A[ ,1], type = "2")                                                                                                                       
sqrt(sum(A[ ,1]^2))

ncol <- dim(A)[2]
dim(A)

p_vec <- numeric(length = 3)

for (i in 1:ncol) {
  p_vec[i] <- norm(A[ ,i], type = "2")
  
}
p_vec

sum(p_vec)

pro <- p_vec/sum(p_vec)
pro

sum(pro)

sample(x =i,size = 1, prob = p_vec, TRUE )

# Q2 C

# Q3 A

exceed <- function()
{
  count <- 0
  total <- 0
  while ( total <= 1) 
  {
    total <- total + sum(runif(n = 1, min = 0, max = 1))
    
    count <- count+1
    
  }
  return(count)
  
}

exceed()

























































