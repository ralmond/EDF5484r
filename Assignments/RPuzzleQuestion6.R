#make this example reproducible
set.seed(1)

nr <- 10
#create data frame with 10 random integers between 1 and 50
df <- as.data.frame(matrix(round(runif(n=16*nr, min=1, max=5), 0), nrow=nr))

#define column names
names(df) <- c('Item1', 'Item2','Item3','Item4','Item5','Item6','Item7','Item8','Item9','Item10','Item11', 'Item12','Item13','Item14','Item15','Item16')
names(df) <- paste("Item",1:16,sep="_")
names(df) <- sprintf("Item%02d",1:16)

topic1cols <- 1:10
topic2cols <- 11:16

#create new columns 
df$Topic1<-rowSums(df[,topic1cols])
df$Topic2<-rowSums(df[,topic2cols])

#view data frame
df

