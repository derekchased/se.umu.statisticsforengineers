library(DataExplorer)

# Set seed based on team bdays
r = sum( 840603,940128)
set.seed(r)

# Import data from (simplified) Washington Post shootings database
# using the provided csv
shootings_csv = read.csv("./lab2_files/shootings.csv")

# Take a sample of the data??
total_rows = dim(shootings_csv)[1]
num_samples_to_use = 100
data=shootings_csv[sample(total_rows, num_samples_to_use, replace = TRUE) ,] 

# what does droplevels do?
data=droplevels ( data )


## ALL TASK SUMMARY

# Summary & Visualization Perform a summary on your sample. 
# Also visualize the distributions of age, fleeing and signs of 
# mental illness in your sample. Comment on the results.

# Summary of data
summary(data)

# Histogram based on age, for breaks use sqrt of num samples
# We can see that there is a downard trend as person gets older
hist(data$age, breaks = sqrt(num_samples_to_use))

# Figure out proper visualization? 
# - if we do just binary choice, whats the best visualization that is good 
# - for binary data. Also, how much of each of these two options
# - if do show all types of fleeing, whats the best to visualize categorical
hist(as.numeric(data$flee=="Not fleeing"))
# pie chart

# Figure out proper visualization?
# - whats the best visualization that is good, for binary data. 
# Also, how much of each of these two options
hist(as.numeric(data$signs_of_mental_illness==1))
# bar probably

# Other notes/options
# 1. DATE: incorporate look at the time series, plot whatever (gun, knife, etc)
# 2. LOCATION: map showing clusters

# create_report(data)

## END ALL TASK SUMMARY

## BEGIN TASK 1

# Question 1 What is the average age of the victims in your sample?
mean_age = mean(data$age)

# 1.1 Using your sample, construct a relevant 95% set for the population mean, 
# in order to determine the lower bound for the mean age along the total 
# population of victims.

# TODO: Build the correct confidence interval
#  there are a number of ways to do it, so figure out which way we should do it?
#  normal distribution? or other distribution?

# From the doc/help, norm.ci
### variance_age = mean_age^2/num_samples_to_use
### norm.ci(t0 = mean_age, var.t0 = variance_age)


# 1.2 Provide a probabilistic interpretation of this confidence interval. 

# we think this is asking... what does 95% conf mean? Jocke explains...

# 1.3 Can we use it to say something about the age of victims?

# ... this will follow from previous


## END TASK 1


## BEGIN TASK 2

# 2.1 Based on your sample, what can you say about the proportion of 
# the unarmed victims in the population. 

# 9 unarmed, 100 total... 9% unarmed
sum(data$armed=="unarmed")
length(data$armed)


# 2.2 Construct a relevant 95% confidence interval.

## END TASK 2



## BEGIN TASK 3

# Question 3 As an argument in discussion, one can claim that the mental
# illness is the reason for the shooting. 

# 3.1 Using the observed sample, can we say that more than 20% of the
# victims have signs of mental illness? 

# 3.2 Perform a relevant hypothesis test to verify the statement. Use
# significance level 5%.

## END TASK 3



## BEGIN TASK 4

# Question 4 Intuitively, one would argue that fleeing from the police
# officer would increase the likelihood to be shot. 

# 4.1 Based on your sample, perform a hypothesis test to determine if this is
# the case or not. Use significance level 5%.

## END TASK 4



## BEGIN TASK 5

# Question 5 Now, return back to analysis of the full population and verify
# if the conclusions you made based on your sample are correct or not.
# Why or why not?

## END TASK 5

