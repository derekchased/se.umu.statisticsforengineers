#Defining vectors
x=c(1,2,3)
y=c(4,5,1)

##--------------------##

#accesing elements of vectors
x[1]
x[1]=2
x
##--------------------##

# operations at vectors

x+y
x*y
x/y
x^2

##--------------------##

I=y>3

y[I]
y[y>3]
##--------------------##


x[I] 
x[y>3]
##--------------------##

#concatenating vectors
z=c(x,y)

##--------------------##

names=c("Jonas","Kristofer","Anna")

##--------------------##


#Build in functions

x=c(4,1,5,2)

mean(x)
sum(x)
median(x=x)
range(x)
sort(x=x)

?sum
##--------------------##

#creating regular sequence
x=1:10

##--------------------##

#creating vectors with functions
x444=seq(from=0,to=10,length.out = 10)
print(x444)
#x=seq(from=0,to=1,by=0.1)
#?seq



# Task 1.Construct a vector x that contain all even integers between 0 and 12. 
# Use function seq with parameter “by=“
x=seq(from=0,to=12,by=2)

# Make it using constructor c()
c(x)
c(2,4,6,8,10,12)

#Use function seq with parameter “length.out=“
seq(from=0,to=12,length.out=12)
print("not sure how to get evens using length.out")


# Task 2. As you have seen the vectors can be used as parameters to 
# various functions. Define regular vector k=0:10. Use this vector
# together with function choose, to calculate simultaneously number 
# of ways we can choose k elements from set of n=10 elements.
k = seq(0,10)
choose(10,k)

#Task 3. Use the above together with the formula for binomial 
# distribution (check book or formula sheet) to calculate a 
# vector of probabilities that a random variable X~Bin(10,0.7) 
# takes values in vector k.
binomial <- function(n,p,x){
  return(choose(n,x)*(p**x)*(1-p)**(n-x));
}
t3 = binomial(10,.7,k)

# Task 4. Repeat the above to determine corresponding probabilities 
# for Y~Bin(10,0.3). Any similarities with results in Task 3?
# Useful functions: choose, seq
t4 = binomial(10,.3,k)
t4
