library(arm)
library(xtable)
xtable(state.x77[1:10,])

data(tli) ## Pull in the TLI data set
help("tli")

write.csv(tli,"tli.csv")

as.POSIXct("09/06/1961",format="%m/%d/%Y")

## Do some EDA on TLI data.
png("tliplot.png")
plot(tli$grade,tli$tlimth)  ##plot(x,y)
dev.off()

plot(tlimth~grade,data=tli)
plot(tlimth~grade,data=tli,
     ylab="TLI math score")
help("title")
help("par")
help("axis")
plot(tlimth~grade,data=tli,
     col=tli$sex,pch=as.character(tli$sex),
     ylab="TLI math score")
help("legend")