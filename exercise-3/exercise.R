# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
expenditure <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
column.names <- colnames(expenditure)

# Why are they so strange?
## Variables cannot start with numbers

# What are the row names of your dataframe?
row.names <- rownames(expenditure)

# Create a column `category` that is equal to your rownames
expenditure$category <- rownames(expenditure)

# How much money was spent on personal care in 1940?
personal.care.1940 <- expenditure['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960
food.and.tobacco.1960 <- expenditure['Food and Tobacco', 'X1960']

# What was the highest expenditure category in 1960?
highest.1960 <- expenditure$category[expenditure$X1960 == max(expenditure$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighestCategory <- function(year) {
  return (expenditure$category[expenditure[year] == max(expenditure[year])])
}

# Using your function, determine the highest spending category of each year
highest.1940 <- HighestCategory('X1940')
highest.1945 <- HighestCategory('X1945')
highest.1950 <- HighestCategory('X1950')
highest.1955 <- HighestCategory('X1955')

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
highest.list <- list()
for (year in seq(1940, 1960, 5)) {
  year.name <- paste0('X', year)
  highest.list[year.name] <- HighestCategory(year.name)
}
