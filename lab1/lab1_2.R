

# Part A - Understanding the data
# Load the data using readxl package
trends_data = read.csv("./trends.csv",)


# Visualizing the suspects
# Plot the number of total, German and foreign suspects versus year, 
# respectively. 

total = trends_data$Foreign.Suspects
german = trends_data$German.Suspects
foreign = trends_data$Foreign.Suspects
years = trends_data$Year
frequency = trends_data$Frequency
frequency_foreign = trends_data$Frequency.Foreign

#   Hint: Use the function par to display multiple plots in the same window.
par(mfrow=c(3,2))
plot(years, total)
plot(years, german)
plot(years, frequency)
plot(years, foreign)
plot(years, frequency_foreign)



# Investigate any trends in the number of crimes, and draw
# conclusions in relation to Trump’s statement. 
## Does the range of the y-axis affect the appearance of the relationships?
## Is it reasonable to study the number of suspects without considering
## the size of the corresponding population?
"
Based on the graphs, we can see that the trajectory for foreign crimes is on 
the raise. However, it is important to note that this predates the refugee
crisis of 2015 by three years. So these events were already in motion

Also, we can see that german crime has been decreasing since 2008.

Having said all this, it is most important to take into account the actual
number of crimes and the crimes per person. Once you do this, you see that
Germans commit more crimes in real numbers and per person when compared to
foreigners. 

So while german crime has been decreasing, and foreign has been increasing,
the number of German crime still dwarfs the real and the relative number of 
crimes when compared to foreigners.

It is reasonable to study suspects without considering the actual numbers
because trajectory is important. It is bad that there is german crime, but
it is great that this number is decreasing.
"

"
b) Visualizing the relative rate of suspects
Repeat the procedure in a), but now consider the suspects per capita
instead. E.g. number of foreign suspects per foreign inhabitant, 
number of German suspects per German inhabitant etc.
Do your conclusions differ from those in a)? Is Trump right or wrong?
"

"Trump's statements are subjective, so cannot be said to be right or wrong. 
There exists crime in Germany and the net rate is on the increase. However,
without context, that statement is meaningless. It certainly does not show
that most crime is commited by Germans, but that does not mean that foreigners
do not commit crime."


"
c) Criminal countries
consider data related to Non German Suspects, which is found in the 
file “nonGermanSuspects.csv”

Visualize the proportion of suspects each country contributes during
2016 (except Germany) by a bar diagram. In addition, visualize the number
of suspects per country during 2016 by a bar diagram. Based on the second
diagram, is the distribution in the first bar diagram expected?

Hint: Experiment with the parameter las to find appropriate settings for the x-tick labels.
"


"
In d) you can make use of both “trends.csv” and “nonGermanSuspects.csv”.
d) Deeper exploration
Install the package DataExplorer and use the function create_report() on the data set. Explore the opportunities that this function brings.
""