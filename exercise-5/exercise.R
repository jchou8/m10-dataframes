# Exercise 5: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`
# Make sure *not* to read the strings as factors (this might take a minute)
female_names <- read.csv('data/female_names.csv', stringsAsFactors = FALSE)

# Create a vector `year` as the year column of the dataset
year <- female_names$year

# Create a vector `name` as the name column of the datset
name <- female_names$name

# Create a vector `prop` as the proportion column of the dataset
prop <- female_names$prop

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- name[year == 2013]

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- prop[year == 2013]

# What was the most popular female name in 2013?
most.popular.2013 <- names.2013[prop.2013 == max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year) {
  year.names <- name[year == my.year]
  year.prop <- prop[year == my.year]
  year.popular <- year.names[year.prop == max(year.prop)]
  return (paste("The most popular name in", my.year, "was", year.popular))
}

# What was the most popular female name in 1994?
most.popular.1994 <- MostPopular(1994)

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(my.name, my.year) {
  year.names <- name[year == my.year]
  year.prop <- prop[year == my.year]
  popularity <- round(year.prop[year.names == my.name] * 100, digits = 4)
  return (paste(popularity, "percent of females were named", my.name, "in", my.year))
}

# How popular was the name 'Laura' in 1995
laura.popularity.1995 <- HowPopular("Laura", 1995)