#Regression predictors: 
#In the election forecasting example of Section 7.1, we used inflation- adjusted growth in average personal income as a predictor. 
#From the standpoint of economics, it makes sense to adjust for inflation here. 
#But suppose the model had used growth in average personal income, not adjusting for inflation. 
#How would this have changed the resulting regression? How would this change have affected the fit and interpretation of the results?

#setwd("/Users/marymoody/Desktop/cogs")
dataset <- read.table("Notebooks/hibbs-1.dat", header = TRUE)
dataset #dataset 


model=lm(vote~growth, data=dataset)
model
plot(model)
summary(model)

## Make up inflation rates
irate <- rgamma(nrow(dataset),4)
summary(irate)

dataset$growth1 <- dataset$growth*(1+irate/100)
model1 <- lm(vote~growth1,data=dataset)
summary(model1)
