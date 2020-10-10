x=seq(from=0,to=2*pi,length.out=10) 
y=sin(x)

plot(y)

plot(x,y)
##--------------------##
plot(x,y,type="l")

plot(x,y,type="l",col=4,lty=3,main="This is the title",xlab="this is x label",ylab="and y label")

##--------------------##

# These draw on top of the plot
points(x,0.5*y)
lines(x,y)



#Exercise: Consider a cardioid curve that is defined by:
#  x(t)= sin(2t)-2sin(t)
#  y(t)= 2cos(t)-cos(2t)

#Construct a dense regular sequence t on interval [0, 2*pi] and
#plot the curve using function plot. 
x=seq(from=0,to=2*pi,length.out=10) 
xof = sin(2*x)-2*sin(x)
yof = 2*cos(x)-cos(2*x)
plot(xof,yof,lty=3,col=3)

#Multiply both vectors x and y by 0.7 and add a red dashed curve to the existing plot.
#Add a blue “x” point at the origin.
plot(xof*.7,yof*.7,lty=3,col=2)
points(0,0,pch=4,col=4)
