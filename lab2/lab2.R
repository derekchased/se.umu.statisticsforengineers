
# Set seed based on team bdays
r = sum(c(840603,111111))
set.seed(r)

# Import data from (simplified) Washington Post shootings database
# using the provided csv
shootings =read.csv("./lab2_files/shootings.csv")

# Take a sample of the data??
data=shootings[sample(4895, 100, replace = TRUE) ,] 
data=droplevels ( data )
data

# Summary & Visualization Perform a summary on your sample. 
# Also visualize the distributions of age, fleeing and signs of 
# mental illness in your sample. Comment on the results.
hist(data)
