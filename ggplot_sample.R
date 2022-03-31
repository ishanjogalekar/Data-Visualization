# Importing libs
library(ggplot2)
library(readr)
# Loading dataset
df <- read_csv("D:/VIT study books/6th Sem/C1+TC1 CSE3050 - Data Visualization and Presentation/L43+L44 Lab/insurance.csv")

# boxplot for each region BMI values using ggplot.
ggplot(df) + geom_boxplot(mapping = aes(y=bmi, color=region))

# t facet_grid considering x axis as charges, y axis as bmi and group by children of 0 to 5. 
t <- ggplot(df) + geom_point(mapping = aes(x=charges, y=bmi, color=smoker))
t + facet_grid(rows = vars(children))

# Subplots contains the information about smokers and non-smokers of both male and female
t <- ggplot(df) + geom_histogram(mapping = aes(x=charges, color=smoker), bins=15, fill='white')
t + facet_grid(rows = vars(sex), cols = vars(region))

# Number of observations from each region using bubble chart
ggplot(df) + geom_count(mapping = aes(x=region, y=sex, color=region)) + labs(title = "Number of Observations in Each Region")

# Histogram for charges based on smokers and non-smokers
ggplot(df) + geom_histogram(mapping = aes(x=charges, color=smoker), bins = 15)