#Q5
setwd("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week6")
rawData=read.csv("P1-6RawData.csv",header=T)
names(rawData)
par(mfrow=c(1,2))
x<-rawData$X
y<-rawData$Y
plot(x,y)
result<-lm(y~x)
result
abline(result,col="red")
y1<-result[[1]][2]*x+result[[1]][1]
plot(x,y1,col="blue")
J1<-sum((y1-y)^2)
J1
S1<-sum((y-mean(y))^2)
S1
rSquare1<-1-J1/S1
rSquare1

#Q8

