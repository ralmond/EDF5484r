library("foreign")
library("arm")
earn <- read.dta("heights.dta")

earn1 <- earn[!is.na(earn$earn),]
earn1 <- earn1[earn1$earn>0,]
loglog.lm <- lm(log(earn)~log(height),data=earn1,na.action = na.omit)
display(loglog.lm)

.008^2*.05^2/(.0082^2*.05^2+(log(1.1)/2)^2)

log(30000)-.008*log(66)

earn.height <- function (height) {
    exp(10.275 + .008*height)
}


