##--------------------##
x=matrix(0,nrow=2,ncol=2)
x=matrix(c(1,2,3,4),nrow=2,ncol=2)

y=matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=T)

##--------------------##
x[2,1]

x[1, ]
x[ ,2]

##--------------------##

#operations on matrices 
x+y
x-y
x/y

x%*%y #product
solve(x) #inverse
diag(x) #diagonal


#Exercise: Using one line of code:
##Construct matrix X of size 3 x 3 filled with value 4.
x = matrix(c(3),nrow=3,ncol=3)
x
##Change the value on position (2,2) to 7
x[2,2] = 7
x
##Change 3-rd row to [2 3 4]
x[,3] = c(2,3,4)
x
##Extract 3-rd column of the matrix
x[,3]
##Find a matrix that is filled with squared elements of matrix X
x
x**2

##Find a matrix that is a result of matrix multiplication X*X.
x = matrix(c(1,2,3,1), ncol=2,byrow=T)
x
#x*x
x%*%x # this is dot product

