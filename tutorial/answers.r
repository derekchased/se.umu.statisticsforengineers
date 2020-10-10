## ============== Part 1 ===============

# Task 1
factorial(5)
choose(5,3)
combn(1:5,2)

# Task 2
n=10;p=0.7;k=3;
choose(n,k)*p^k*(1-p)^(n-k)

n=10;p=0.3;k=7;
choose(n,k)*p^k*(1-p)^(n-k)

## ============== Part 2 ===============

#Task 1
c(0,1,2,3,4,5,6,7,8,9,10,11,12)
seq(0,12,by = 1)
seq(0,12,length.out = 13)

#Task 2
k=0:10;n=10;p=0.7
choose(n,k)*p^k*(1-p)^(n-k)

#Task 3
k=0:10;n=10;p=0.3
choose(n,k)*p^k*(1-p)^(n-k)
# Vector in the reveresed order, follows from properties of binomial and counting successes of failures

## ============== Part 3 ===============

x=matrix(4,nrow = 3,ncol = 3)
x[2,2]=7
x[3,]=c(2,3,4)
x[,3]
x^2
x%*%x

## ============== Part 4 ===============
#1.
Cases <- read.csv("Cases.csv")
#2.
Cases[Cases$Cases==max(Cases$Cases),]
Cases[Cases$Deaths==max(Cases$Deaths),]
#3.
Cases$Rate=Cases$Deaths/Cases$Cases
#4.
Cases[Cases$Rate==max(Cases$Rate),]
Cases[Cases$Rate==min(Cases$Rate),]
#5.
sum(Cases$Rate<0.02)
#6
Cases$state[Cases$Rate>0.02]
#7
write.csv(Cases,file="ExtendedCases.csv")

## ============== Part 5 ===============
#1
t=seq(0,2*pi,length.out = 1000)
x=sin(2*t)-2*sin(t)
y=2*cos(t)-cos(2*t)
plot(x,y,type="l")
#
lines(0.7*x,0.7*y,lty=2,col=2)
#
points(0,0,pch="x",col=4)
## ============== Part 6 ===============
# Task 1
n=10;p=0.7;k=1:10
dbinom(k,n,p)
n=10;p=0.3;k=1:10
dbinom(k,n,p)

# Task 2
dbinom(7,10,0.8)
pbinom(4,10,0.8)

# Task 3
pnorm(2)
qnorm(0.975)
qnorm(0.025,lower.tail = F)

# Task 4
x=seq(-5,5,length.out = 1000)
plot(x,dnorm(x,mean = 0,sd = 1),type="l")
lines(x,dnorm(x,mean = 0,sd = 2), col=2)
lines(x,dnorm(x,mean = 0,sd = 3), col=3)
lines(x,dnorm(x,mean = 0,sd = 4), col=4)

x=seq(-5,5,length.out = 1000)
plot(x,pnorm(x,mean = 0,sd = 1),type="l")
lines(x,pnorm(x,mean = 0,sd = 2), lty=2)
lines(x,pnorm(x,mean = 0,sd = 3), lty=3)
lines(x,pnorm(x,mean = 0,sd = 4), lty=4)

## ============== Part 7 ===============

#Task 1
Success<-function()
{
  res=sample(1:6,1)
  if(res>4) 
  {
    print("Success")
  }
}
#Task 2
n=14;p=0.78
x=0;
while(pbinom(x,n,p)<=0.9)
{
  x=x+1;
}
print(x-1)

#Task 3
FindQuantile<-function(n,p)
{
  x=0;
  while(pbinom(x,n,p)<=0.9)
  {
    x=x+1;
  }
  return(x-1)
}