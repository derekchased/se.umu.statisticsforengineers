ID=c(1,2,3,4,5) #subject ID
g=c("m","f","m","f","f") #gender
h=c(188,150,160,149,123) #height
w=c(70,50,55,67,30) #weight


subjects=data.frame(ID=ID,height=h,weight=w,gender=g)

##--------------------##

subjects[1,]
subjects[,2]
subjects[,1:2]

subjects$ID
subjects$height

##--------------------##

# This adds a new column
subjects$BMI = subjects$weight/(subjects$height/100)^2

##--------------------##

# only return rows where gender == f
subjects[subjects$gender=="f", ]
subjects$gender=="f"

##--------------------####   File operations  ####--------------------##

write.table(x=subjects,file='./MyData.txt',sep=" ")

##--------------------##
x=read.table(file='MyData.txt',sep=" ",header=T)
x

#Exercise: Consider data in file Cases.csv, 
# which consists of the information about the number of 
# confirmed and fatal covid cases in individual states in USA 
# till September 11, 2020.
# Read in the data.

cases=read.table(file='Cases.csv',sep=",",header=T)
# Find out which 
## states have 
### the highest and lowest number of cases
### as well as highest and lowest number of fatalities.
state_name_highest_cases=cases[cases$Cases == max(cases$Cases),1]
state_data_highest_cases=cases[cases$Cases == max(cases$Cases),]
state_data_highest_cases

state_name_lowest_cases=cases[cases$Cases == min(cases$Cases),1]
state_data_lowest_cases=cases[cases$Cases == min(cases$Cases), ]
state_data_lowest_cases
# Create additional column in your data frame called “Rate” 
# and fill it with fatality rate among the confirmed cases.
cases$Rate = cases$Deaths/cases$Cases
cases$Rate

# Which states have the highest and lowest fatality rate?
#  How many states have mortality rate below 2%?
nrow(cases[cases$Rate < .02,])
cases$Rate < .02
cases$Below_2_percent = cases$Rate < .02

#  List the name of states which have the mortality rate above 5%.
nrow(cases[cases$Rate > .05,])
cases$Rate > .05
cases$Above_5_percent = cases$Rate > .05
cases[cases$Above_5_percent == TRUE,1]
length(cases[cases$Above_5_percent == TRUE,1])
# Save the extended data frame to a file “ExtendedCases.csv”
write.table(x=cases,file='./ExtendedCases.csv',sep=",")


