dog <-load.image("dog.jpeg")
dogdim(dog)
plot(dog)

graydog <- grayscale(dog)

gray.mat <- as.matrix(graydog[,, 1,1])
dim(gray.mat)
plot(gray.mat)

col.mat <- as.array(dog[,,1,])
dim(col.mat)

cropped.mat <- col.mat[1:300, ,]
crop.dog <- as.cimg(cropped.mat)
  
  
  
# ques 1
dist <- matrix(0, nrow = dim(dog)[1] ,ncol = dim(dog)[1])

for(i in 1:dim(dog)[1])
{
  for (j in 1:dim(dog)[2]) {
    dist[i,j] <-  norm(dog[i,j,1,] - c(0,1,0),  "2")
    
    
  }
}

which(dist == min(dist), arr.ind = TRUE)

  
  dist
  
  
  
  
 which(dist == min(dist), arr.ind = TRUE)
 
index


# q2

  
  #red
  
dist <- matrix(0, nrow = dim(dog)[1] ,ncol = dim(dog)[1])

for(i in 1:dim(dog)[1])
{
  for (j in 1:dim(dog)[2]) {
    dist[i,j] <-  norm(dog[i,j,1,] - c(1,0,0),  "2")
    
    
  }
}

which(dist == min(dist), arr.ind = TRUE)
dist
#blue


  
dist <- matrix(0, nrow = dim(dog)[1], ncol = dim(dog)[2])

for(i in 1:dim(dog)[1])
{
  for (j in 1:dim(dog)[2]) {
    dist[i,j] <-  norm(dog[i,j,1,] - c(0,0,1),  "2")
  
  }
}

index <- which(dist == min(dist), arr.ind = TRUE)
index
plot(dog)
points(index, col = "red", pch = 16)

# q3
file1 <- "col1.png"
file2 <- "col2.png"
file3 <- "col3.png"


if(grepl(".png", file1))
{
  print("file1 is likely to be red")
}  
if (grepl(".png", file2))
  {
  print("file2 is likely to be blue")
  } else
{
  print("file3 is likely to be green")
}


col1 <- load.image("col1.png")

col2 <- load.image("col2.png")
which.max( col2[1,1,1, 1:3]   )











  