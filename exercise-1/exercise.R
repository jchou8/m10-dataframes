# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
points <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
opponent.points <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
games <- data.frame(points, opponent.points)

# Create a new column "diff" that is the difference in points
games$diff <- abs(games$points - games$opponent.points)

# Create a new column "won" which is TRUE if the Seahawks wom
games$won <- games$points > games$opponent.points

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
rownames(games) <- opponents
