#Programming fake-data simulation: 
#Write an R function to: 
#(i) simulate n data points from the model, y = a + bx + error, with data points x uniformly sampled from the range (0, 100) and with errors drawn independently from the normal distribution with mean 0 and standard deviation σ; 
#(ii) fit a linear regression to the simulated data; 
#(iii) make a scatterplot of the data and fitted regression line. 


simulate_data <- function(n, a, b, sigma) {
  # Generate n uniformly distributed x values between 0 and 100
  x <- runif(n, 0, 100)
  
  # Generate errors from normal distribution with mean 0 and standard deviation sigma
  errors <- rnorm(n, 0, sigma)
  
  # Calculate y values using the model y = a + bx + error
  y <- a + b * x + errors
  
  # Return a dataframe with x and y values
  return(data.frame(x = x, y = y))
}

# Example usage:
set.seed(123) # for reproducibility
simulated_data <- simulate_data(100, 2, 0.5, 1) # Simulate 100 data points with a=2, b=0.5, sigma=1
head(simulated_data) # View the first few rows of the simulated data

#Fit a linear regression with simulated data 
model <- lm(y ~ x, data = simulated_data)
model

###Create a scatterplot 
plot(simulated_data$x, simulated_data$y, main = "Scatterplot with Fitted Regression Line",
     xlab = "x", ylab = "y", col = "blue", pch = 19)
abline(model, col = "red")


