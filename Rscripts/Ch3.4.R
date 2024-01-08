# Chpater 3 _ Problem 3.4
library ("foreign")
library("arm")
iq.data <- read.dta ("child.iq.dta")
attach(iq.data)
head(iq.data)
# mother's education is a categorical variable where;
# 1 = no hs education, 2 = hs grad, 
# 3 = some college, and 4 = college grad.

# part a: Fit a regression of child test scores on mother's age, 
# display the data and fitted model, check assumptions, and interpret the slope coefficient. 
# When do you recommend mothers should give birth? 
regression1 <- lm(ppvt ~ momage, data=iq.data)
display(regression1)
summary(regression1)
plot(iq.data$ppvt, iq.data$momage)
plot(ppvt ~ momage, data=iq.data)
par(mfrow = c (1,1))
abline(regression1)
display(regression1)
plot(regression1)

regression2 <- lm(ppvt ~ momage+ educ_cat, data=iq.data)
display(regression2)

plot(iq.data$momage, iq.data$ppvt,
     xlab="Mother's Age", ylab="Child's IQ (PPVT)",
     main="IQ Data (Gelman and Hill, Ch 3)")
abline(regression1)
lines(lowess(iq.data$momage,iq.data$ppvt),col=2,lty=2)

library(lattice)
xyplot(ppvt ~ momage+educ_cat,data=iq.data,type=c("p","r"))

## Color by education level
plot(iq.data$momage, iq.data$ppvt,
           xlab="Mother's Age", ylab="Child's IQ (PPVT)",
           main="IQ Data (Gelman and Hill, Ch 3)",
           pch=iq.data$educ_cat,col=iq.data$educ_cat)
legend("topright",legend=1:4,col=1:4,pch=1:4)
legend("topright",legend=1:4,col=1:4,pch=1:4)
coef(regression2)
xma <- seq(14,32,.05)
lines(xma,cbind(1,xma,1)%*%coef(regression2),col=1)
curve(cbind(1,x,2)%*%coef(regression2),add=TRUE,col=2)
lines(xma,cbind(1,xma,3)%*%coef(regression2),col=3)
lines(xma,cbind(1,xma,4)%*%coef(regression2),col=4)
