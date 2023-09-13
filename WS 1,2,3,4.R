getwd()

###factorial
fact <- function(n)
{ f <- 1
 for (i in 1:n) {
   f <- f*i
   
 }
  return(f)
 
  }
fact(4)
#### eluer
euler <- function(n){
  
  r <- (1+1/n)**n
  
return(r)  
  
}
euler(3)


#### q3
seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")

seat[seat$Roll.No == 231080052,]

seat <- seat[-c(2)]

seat[seat$Roll.No == 231080052,]

####Q4
setwd("C:/Users/YOGA 380/Desktop/DATA SCIENCE/worksheet-1-5-kritika-main/worksheet-1-5-kritika-main")

seating <- read.csv("seating.csv")
###### work 2
#### q1

seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
seat
msc <- seat[seat$Roll.No > 10000000,]
length(msc)

length(msc$Roll.No)


#####q2



setwd("C:/Users/YOGA 380/Desktop/DATA SCIENCE/worksheet-2-5-kritika-main/worksheet-2-5-kritika-main")

cricket <- read.csv("battingbowling.csv")

###all.rounder1 <- cricket[cricket$Bowling < 40,]
###all.rounder2 <- cricket[cricket$Batting > 25,]
####all.round <- c(all.rounder1,all.rounder2)

all.round <- cricket[cricket$Bowling < 40 & cricket$Batting > 25,]
all.round
tab <- table(all.round$Team)

which.max(tab)
which.min(tab)

######q4

plot(x,y,"l")


######3q5
f <- function(n)
{
  f <- (1+1/n)^n
  
return(f)
}
f(2)

n <- 1:1000
fn <- f(n)

plot(n, fn, type = "l")
abline(h = exp(1), col = "red")

######work3
####Q1
head <- rbinom(n = 1000, size = 1, prob = 0.5)
prop <- sum(head)/1000
prop

head1 <- rbinom(n = 1000, size = 1, prob = 0.30)
prop1 <- sum(head1)/1000
prop1


1 = "red"
2 = "blue"
3 = "green"


probs <- c(3/7,2/7,2/7)

rand <- sample(1:3, size = 1, prob = probs, replace = TRUE)
random
rand
#### b

A <- matrix(c(3,3,4,5,6,7,5,4,7), nrow = 3, ncol = 3)
A

p_vec <- numeric(length = 3)

for(i in 1:ncol){
  
  p_vec[i] <- norm(A[,i], type = "2")
}

ratio <- p_vec/sum(p_vec)
ratio

#####Q4

exceed <- function()
{
  count <- 0
  sum <- 0
  while (sum <= 1) 
    {
    sum <- sum + runif(n = 1, min =0 , max = 1)
    
    count <- count +1
  }
  return(count)
}
exceed()

store <- numeric(length = 1000)
for (i in 1:1000) 
  {
  store[i] <- exceed()
  
}
store
mean(store)



######Q5
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
blow(25)

total <- numeric(length = 1000)

for(i in 1:1000){
  
  total[i] <- blow(25)
}
total
mean(total)

blow(30)
 
for (i in 1:1000) {
  
  total[i] <- blow(30)
  
}
total
mean(total)


######worksheet4
library(imager)
setwd("C:/Users/YOGA 380/Desktop/DATA SCIENCE/worksheet-4-5-kritika-main/worksheet-4-5-kritika-main")

dog <- load.image("dog.jpeg")
dog
dim(dog)
plot(dog)

######purest green

col.mat <- as.array(dog[,,1,])
dims <- dim(col.mat)

dist <- matrix(0, nrow = dims[1], ncol = dims[2])
for (i in 1:dims[1]) {
  for (j in 1:dims[2]) {
    dist[i,j] <- norm(col.mat[i,j,]- c(0,1,0), "2")
    
  }
  
}
index <- which.min(dist)
points(index,col = "black", pch = 20)
index
points

#######purest rednorm


dist1 <- matrix(0, nrow = dims[1], ncol = dims[2])
for (i in 1:dims[1]) {
  for (j in 1:dims[2]) {
    dist1[i,j] <- norm(col.mat[i,j,]-c(1,0,0), "2") 
    
  }
  
}

index1 <- which(dist1 == min(dist1), arr.ind = TRUE)
points(index1, col = "blue", pch = 20)

#####Q3
col1.png <- load.image("col1.png")
col2.png <- load.image("col2.png")
col3.png <- load.image("col3.png")


#Define the file names
file_names <- c("col1.png", "col2.png", "col3.png")

# Define the primary colors
primary_colors <- c("Red", "Green", "Blue")

# Randomly assign colors to the files
assigned_colors <- sample(primary_colors)

# Print the assigned colors for each file
for (i in 1:length(file_names)) {
  cat("File", file_names[i], "is", assigned_colors[i], "\n")
}

plot(col1.png)

######Q4





#####3Q5

library(imager)
rot180 <- function(image)
{
  img <- load.image("image")
  
plot(img)
col.mat <- as.array(img[,,1,])
rot <- array(0,dim = c(dims,3))

for (i in 1:dims[1]) {
  for(j in 1:dims[2])
    rot[i,j,] <- col.mat[dims[1]-i+1,dims[2]-j+1,]
  
  
}
 return(rot) 
  
}
rot180(mu)
par(mfrow = c(1,2))
plot(as.cimg(rot))











