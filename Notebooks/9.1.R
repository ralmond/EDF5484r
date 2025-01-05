###Problem 9.1
#A linear regression is fit on high school students modeling grade point average given household income. 
#Write R code to compute the 90% predictive interval for the difference in grade point average comparing two students,
#one with household incomes of $40,000 and one with household income of $80,000.


# Sample data (made up)
data <- data.frame(
  GPA = c(3.5, 3.8, 3.2, 3.9, 3.6), # Example GPA values
  Income = c(45000, 55000, 40000, 75000, 80000) # Example household income values
)

# Fit a linear regression model using lm function
lm_model <- lm(GPA ~ Income, data = data)

# Household incomes for the two students
income_1 <- 40000
income_2 <- 80000

# Define the coefficients of the model
coef_intercept <- coef(lm_model)[1]
coef_income <- coef(lm_model)[2]

# Compute the predicted GPA for each student
gpa_1 <- coef_intercept + coef_income * income_1
gpa_2 <- coef_intercept + coef_income * income_2

# Compute the standard error of the difference in GPA
se_difference <- sqrt(sum(diag(vcov(lm_model)) * c(1, 1))^2)

# Compute the t-value for a 90% confidence interval
t_value <- qt(c(.05,0.95), df = df.residual(lm_model))

# Compute the margin of error
margin_error <- t_value * se_difference

# Compute the lower and upper bounds of the predictive interval
lower_bound <- (gpa_1 - gpa_2) - margin_error
upper_bound <- (gpa_1 - gpa_2) + margin_error

# Print the predictive interval
cat("The 90% predictive interval for the difference in GPA is [", lower_bound, ",", upper_bound, "].\n")
