###Standard Deviation
## Monthly birth rate
girls.1908 <- c(.4777, .4875, .4859, .4754, .4874, .4864, .4813, .4787, .4895, .4797, .4876, .4859)
girls.1909 <- c(.4857, .4907, .5010, .4903, .4860, .4911, .4871, .4725, .4822, .4870, .4823, .4973)
## average births per month
n <- 3900
girls <- c(girls.1908, girls.1909)

std.girls <- sd(girls)
std.girls


### Expected Standard Deviation
p.girls <- mean(girls)
p.girls

stddev.expected <- sqrt(p.girls*(1-p.girls)/n)
stddev.expected 


dof <- 23
rho <- 0.05
alpha <- qchisq(rho/2., dof)
upper.deviation <- sqrt(dof*(std.girls^2)/alpha)
beta <- qchisq(1 - (rho/2.), dof)
lower.deviation <- sqrt(dof*(std.girls^2)/beta)
lower.deviation
upper.deviation

# The standard deviation of 0.0064 falls within the range of the upper and lower deviations, therefore it is not significant.

