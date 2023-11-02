library(Rcpp)
# In R
EucR <- function(x, y)
{
  rtn <- sqrt(sum( (x-y)^2 ))
  return(rtn)
}

# In C++ using Rcpp

cppFunction('double EucC(NumericVector x, NumericVector y) {
double track = 0;
int n = x.size();
for(int i = 0; i < n; i++){
track = track + pow( (x[i] - y[i]), 2);
}
track = sqrt(track);
return track;
}')
library(rbenchmark)
x <- numeric(length = 1e4)
y <- numeric(length = 1e4)

benchmark(EucR(3,4), EucC(3,4))



cppFunction('
NumericMatrix addMat(NumericMatrix A,NumericMatrix B)
{ 
 int n = A.nrow();
 int m = A.ncol();
 NumericMatrix C(n,m);
 
 for(int i = 0; i < n ; i ++){
 for( int j = 0; j < m; j++){
 C(i,j) = A(i,j) + B(i,j);
 }
}
 
 return C ;
}')

A <- matrix(c(1,1,1,1,1,1),nrow = 3, ncol = 2)
B <- matrix(c(2,2,2,2,2,2), nrow = 3, ncol = 2)
A + B

addMat(A,B)
