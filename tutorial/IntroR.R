# Calculator
2+4
2+3*(2+4) 
2^5
log(2^5)
#symbols
#+,-.*,/,^2
##--------------------##
#Functions()
sin(2)
log(2)
exp(3)

##--------------------##
#Variables
x=2 
y<-5
##--------------------##

x+y
z=x^2

##--------------------##

# Define variables
x=2
y=5
# Calculate their sum
z=x+y # My new z
##--------------------##

name="Jonas"  

##--------------------##

x=T
y=F
if(T==T){
  x=9
}else{
  x=22
}


# Task 1. Use R and build in functions to calculate
# In how many ways can we order 5 elements?
permutation <- function ( n ){
  if(n <= 0){
    return(null)
  }else if(n == 1){
    return(n)
  }else{
    return(n*permutation(n-1))
  }
}
permutation(8)
?factorial
#(8)

# In how many ways can you choose 3 elements from set of 5?
combination <- function ( n, r ){
  # no funny business
  if(r >n){
    return(null)
  }
  # return 1, avoid divide by 0
  else if(r == n && r>0){
    return(1)
  }
  return(permutation(n)/(permutation(r)*permutation(n-r)))
}
combination(4,3)

# apparently there is a function built in
dim(combn(4,3))[2]
choose(4,2)

# What are all possible combinations of choosing 2 elements from a set of 5 distinct elements?
combn(4,2)

#Task 2. Define variables n=10, p=0.7, Assume that you have random variable that is
# binomially distributed with parameters n and p. Using the formula included in the
# book calculate probability that random variable takes value 3;

# P(X = 3) = (nCx)p**x(1-p)**(n-x)
binomial <- function(n,p,x){
  return(choose(n,x)*(p**x)*(1-p)**(n-x));
}

binomial(10, 0.7, 3);

#2B -> Assume that you have a random variable with parameters n=10 but p=0.3 and
#calculate probability that random variable takes value 7.

binomial(10, 0.3, 7);

