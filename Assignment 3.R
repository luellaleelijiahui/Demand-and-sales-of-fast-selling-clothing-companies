Companies_id<-c(1:110)
head(Companies_id)
Product_id<-c(paste0("JD-",sample(300:500, 110, replace=FALSE) ,sep=""))
head(Product_id)
Demand<-c(as.integer(abs(rnorm(110,mean=50000,sd=15000))))
head(Demand)
Sales<-c(as.integer(abs(rnorm(110,mean=60000,sd=10000))))
head(Sales)


table.data<-data.frame(Companies_id,Product_id,Demand,Sales)
head(table.data)

Mean.data<-lapply(table.data[3:4],mean)

newdata.demad<-subset(table.data, table.data$Demand >(Mean.demand<-lapply(table.data[3],mean)))
head(newdata.demad)

newdata.demad.1<-data.frame(na.omit(newdata.demad))


newdata.both<-subset(newdata.demad.1, table.data$Sales >(Mean.sales<-lapply(table.data[4],mean)))
head(newdata.both)

newdata.both.1<-data.frame(na.omit(newdata.both))

#################################################