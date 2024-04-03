#r puzzle (0117)

#q5
# Function to scale columns to a range of 0 to 1
# Min-max normalization : x_scaled = (x-x_min)/(x_max-x_min)
scale_to_0_1 <- function(x, na.rm=T) {
  (x - min(x, na.rm=na.rm)) / 
    (max(x, na.rm=na.rm) - min(x, na.rm=na.rm))
  }

# Create a sample data frame with fake data
set.seed(123) 
q5 <- data.frame(
  column1 = rnorm(100, mean = 50, sd = 10),  
  column2 = rnorm(100, mean = 30, sd = 5),
  column3 = rnorm(100, mean = 20, sd = 3)
)

# Scale each column of q5
scaled_q5 <- as.data.frame(lapply(q5, scale_to_0_1))

# View the scaled data frame
View(scaled_q5)


