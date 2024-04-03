#Problem 9: Create 5 new data sets with the same number of rows as the original data set by sampling 
#(with replacement) from the original data. 
#(This is known as the bootstrap and is a useful trick for generating standard errors.)

#R Syntax 

library(haven)

problemcs1 <- read_sav("Assignments/problemcs1.sav")
View(problemcs1) #7 variables, #230 observations for each variable 
View(problemcs1 ) #shows data
summary(problemcs1) #provides descriptive statistics 
N <- nrow(problemcs1)

set.seed(0000) #set seed to avoid getting different bootstrap estimates each time you run the analysis. 

num_samples=5 #create 5 samples 

boot_samples <- list()

for (b in 1:num_samples) {
  
  bsrows <- sample.int(N,N,replace=TRUE)

  boot_samples[[b]] <- problemcs1[bsrows,]
}


for (b in 1:length(boot_samples)) {
  ## Do our calculations.
}




