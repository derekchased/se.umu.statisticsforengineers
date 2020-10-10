library(readxl)
# Part A - Understanding the data
# Load the data using readxl package
excel_data = read_excel("./Malnutrition_HANCI.xlsx",)

# I tried to fix the data table because I could not answer the questions
# in R Studio directly

# does not work, can't do an open interval on a dataframe
#excel_data[7:,]

# need to know the length of a data frame,
print(excel_data[7:length(excel_data),])

"
1a. What does the variable agexpend tell us?
- this is government spending on agriculture.
- I believe this is a percentage
- I had to open the excel doc because on import, it was hard to read 
- I see now that the first 8 rows or so are oddly formatted in excel
1b. What does the value of the variable sanitaccess mean?
- This is access to sanitation
- Same comment as above
1c. What was the main source for the values of variable wateraccess?
- Access to drinking water??
- not sure about this one
"

# Part B - Cleaning and analyzing data
# -First of make the variable names the new headers of the dataset. 
# -Thereafter, you should remove the first 9 rows of the data set. 
# -Do also remove the last 5 rows as these are also irrelevant.

# Create new header - 9th row, all columns
#... actually since we used the readexcel function, it's the 8th row now
#... that function automatically the 1st row the header, so now the 1st row
#... is really the second row, etc
header_row = 8
header = excel_data[header_row,]
names(excel_data) = header

# Remove first 8 rows
excel_data_reduced = excel_data[-seq(1,8),]

# Remove last 4
excel_data_reduced_more = excel_data_reduced[-seq( nrow(excel_data_reduced)-3, nrow(excel_data_reduced)),]

# Compare the median water access between countries in Africa and outside Africa.
# Do this by creating a side by side boxplot (Add labels to create a nicer plot).
# PS. Don’t forget to make the values numeric to be able to create a boxplot

africa = as.numeric(excel_data_reduced_more$wateraccess[excel_data_reduced_more$Africa == 1])
not_africa = as.numeric(excel_data_reduced_more$wateraccess[excel_data_reduced_more$Africa == 0])
boxplot(africa, not_africa, names=c("Africa","Not Africa"), main="Access to water, 2012", xlab="Continent", ylab="Some unit?")

# Find the mean water access of all the countries in Africa and compare 
# it to the mean water access of all the countries from the rest of the world. 
# Does it tell the same story as the boxplot? What is the difference between 
# mean and median? Explain shortly.
africa_mean = sum(as.numeric(excel_data_reduced_more$wateraccess[excel_data_reduced_more$Africa == 1]))/length(excel_data_reduced_more$wateraccess[excel_data_reduced_more$Africa == 1])
not_africa_mean = sum(as.numeric(excel_data_reduced_more$wateraccess[excel_data_reduced_more$Africa == 0]))/length(excel_data_reduced_more$wateraccess[excel_data_reduced_more$Africa == 0])
print( c("africa_mean", africa_mean))
print( c("not_africa_mean", not_africa_mean))

print( "The median is not necessarily the 'center' value. It is not the average. It is not the middle. The median represents the
       middle 'element' regardless of values. So if you take all your data points, lets say 21 of them, fold them in half, whatever the 
       middle elelement is, that is the median. This is different from the mean which is the true 'center' of the actual values.")

#Manipulating data
# Create a new variable in the data frame being the combined investment in 
# health and agriculture and call it totalexpend. Furthermore, find the 
# country with the lowest value of the new variable totalexpend. Lastly 
# plot the variable totalexpend in a histogram. Can you draw any conclusions 
# based on the histogram?
  #Hint: Use function hist to create a histogram.
investment_in_health = as.numeric(excel_data_reduced_more$healthexpend)
investment_in_ag = as.numeric(excel_data_reduced_more$agexpend)
combined_investment = investment_in_health + investment_in_ag
excel_data_reduced_more$combined_investment = combined_investment
country_lowest_combined = which.min(excel_data_reduced_more$combined_investment)
excel_data_reduced_more$combined_investment
excel_data_reduced_more[country_lowest_combined,1]
hist(excel_data_reduced_more$combined_investment)

