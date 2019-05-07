#Q1
setwd("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week8")
Data1 = read.csv("00 kc_house_data.csv")
set.seed(0)
trainIdx<-sample(seq(1,nrow(Data1)),floor(nrow(Data1)*0.7))
yTrain<-Data1$price[trainIdx]
yTest<-Data1$price[-trainIdx]
mean(yTrain)
mean(yTest)

#Q2
Data2 = read.csv("arrythmia.csv",header=F)
Retrieve<-Data2[1:100,1:5]
#(1)
(Standardized = scale(Retrieve))
#(2)
for (col in 1:5)
{
  Cutted = cut(Retrieve[,col],breaks = 10)
  count = as.vector(table(Cutted))
  print(count)
}

#Q3
Data3 = read.csv("RawDataUSCities.csv")
#a
Standard<-Data3[FALSE]
Standard[,1]=Data3$City
Standard[,2]=scale(Data3$PercentageBlack)[1:49,]
Standard[,3]=scale(Data3$PercentageHispanic)[1:49,]
Standard[,4]=scale(Data3$PercentageAsian)[1:49,]
Standard[,5]=scale(Data3$MedianAge)[1:49,]
Standard[,6]=scale(Data3$UnemploymentRate)[1:49,]
Standard[,7]=scale(Data3$PerCapitaIncomeThousand)[1:49,]
colnames(Standard)<-colnames(Data3)[2:8]
Standard
#b
normalize = function(x)
{
  return((x-min(x))/(max(x)-min(x)))
}
Normalize<-Data3[FALSE]
Normalize[,1]=Data3$City
Normalize[,2]=normalize(Data3$PercentageBlack)
Normalize[,3]=normalize(Data3$PercentageHispanic)
Normalize[,4]=normalize(Data3$PercentageAsian)
Normalize[,5]=normalize(Data3$MedianAge)
Normalize[,6]=normalize(Data3$UnemploymentRate)
Normalize[,7]=normalize(Data3$PerCapitaIncomeThousand)
colnames(Normalize)<-colnames(Data3)[2:8]
Normalize

