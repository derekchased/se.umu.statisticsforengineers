dnorm(3,mean = 4,sd = sqrt(16)) # Density

pnorm(3,mean = 4,sd = sqrt(16)) # Cumulative distribution function

qnorm(0.95,mean = 4,sd = sqrt(16)) # Quantile function

rnorm(3,mean = 4, sd = sqrt(16)) # random numbers

##--------------------## 

x=seq(-10,20,length.out = 100);
plot(x,dnorm(x,mean = 4,sd = sqrt(16)),type="l")

plot(x,pnorm(x,mean = 4,sd = sqrt(16)),type="l")

##--------------------## 
outcomes=c(1,2,3,4,5,6)
sample(outcomes, 3, replace=T)
sample(outcomes, 3, replace=F)
##--------------------## 
n=7
sample(7,3,replace = F)



#  Task 1.Repeat task 3 and 4 in Vector section with help of pbino function.

#Task 3. Use the above together with the formula for binomial 
# distribution (check book or formula sheet) to calculate a 
# vector of probabilities that a random variable X~Bin(10,0.7) 
# takes values in vector k.
k = seq(0,10)
binomial <- function(n,p,x){
  return(choose(n,x)*(p**x)*(1-p)**(n-x));
}
binomial(10,.7,k)
dbinom(k,10,.7)

derek = binomial(10,.7,k)
r = dbinom(k,10,.7)
# derek == r returns FALSE because they are off by tiny tiny numbers
# therefore just subtract and see if the difference is super tiny!
(derek-r) < .000000000000001

# Task 4. Repeat the above to determine corresponding probabilities 
# for Y~Bin(10,0.3). Any similarities with results in Task 3?
# Useful functions: choose, seq
dbinom(k,10,.3)


#Task 2. Consider random variable X~Bin(10,0.8). Find
# P(X=7)
dbinom(7,10,.8)
# P(X<=4)
pbinom(4,10,.8)


#Task 3.  Consider standard normally distributed random variable. Use R to find:
## P(X<2)
pnorm(2)
## x such that P(X>x)=0.025
qnorm(0.975)
qnorm(0.025,lower.tail = F)

#Task 4. Consider sequence of normal distributions, all with 
#mean 0 but with variances 1,2,3,4.

#Plot on one plot all the densities of all the distributions. 
#Each density should have its own colour.

# A) Create a sequence
x=seq(-5,5,length.out = 10000)

# B) Get ditribution using the x vector and values above
m0v1 = dnorm(x,mean = 0,sd = 1)
plot(x,m0v1,type="l")
# or
plot(x,dnorm(x,mean = 0,sd = 1),type="l")

# C) Use lines (or dots) to draw ontop of the existing plot
lines(x,dnorm(x,mean = 0,sd = sqrt(2)),col=2)
lines(x,dnorm(x,mean = 0,sd = sqrt(3)),col=3)
lines(x,dnorm(x,mean = 0,sd = sqrt(4)),col=4)


#Plot on one plot all the cumulative distribution functions. 
#Each cumulative distribution function should have black colour 
#but different line styles (solid, dotted, dashed and dotted dashed)
plot(x,pnorm(x,mean = 0,sd = 1),type="l")

# C) Use lines (or dots) to draw ontop of the existing plot
lines(x,pnorm(x,mean = 0,sd = sqrt(2)),lty=3)
lines(x,pnorm(x,mean = 0,sd = sqrt(3)),lty=6)
lines(x,pnorm(x,mean = 0,sd = sqrt(4)),lty=5)
