#Q1
Flies<-read.table("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/blowfly.txt", header=T)
length(Flies$flies)
length(unique(Flies$flies))

#Q2
yr<-0
money<-10000
while (money<1000000)
{
  yr<-yr+1
  #print(yr)
  money<-money*(1+0.06)
  money<-money+10000
  #print(money)
}
yr

#Q3
WorldFloras<-read.table("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/worldfloras.txt", header=T)
as.vector(WorldFloras$Country[grep("^.{3}c",as.character(WorldFloras$Country))])

#Q4
Area<-function(r, V)
{
  h<-3*V/(pi*r^2)
  A<-pi*r*sqrt(r^2+h^2)
  return(A)
}
V<-10
rList<-seq(0.1,10,0.1)
for (r in rList)
{
  AList<-Area(rList, V)
}
par("mar"=c(5,5,4,1)+0.1)
plot(rList, AList, xlab="r/in", ylab=expression(A/"in"^2))
rList[sort(AList)[1]]

#Q5
Fac<-function(x)
{
  if (x<=0) return(x+1)
  Fac<-x*Fac(x-1)
  return(Fac)
}
for (i in 1:10)
{
  print(Fac(i))
}

#Q6
#(a)
Cells<-read.table("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/cells.txt", header=T)
MultiVariate<-read.table("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/multivariate.txt", header=T)
sapply(Cells, class)
sapply(MultiVariate, class)
#(b)
Cells_new<-read.table("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/cells.txt", header=F, skip=1)
MultiVariate_new<-read.table("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/multivariate.txt", header=F, skip=1)
colnames(Cells_new)<-c("CELLS","SMOKER","AGE","SEX","WEIGHT")
colnames(MultiVariate_new)<-c("TEMP","INDUSTRY","POPULATION","WIND","RAIN","WETDAYS")
sapply(Cells_new, class)
sapply(MultiVariate_new, class)
#(c)
write.table(Cells_new, "/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/cells_new.txt")
write.table(MultiVariate_new, "/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/multivariate_new.txt")
save(Cells_new, file="/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/cells_new.dat")
save(MultiVariate_new, file="/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week3/multivariate_new.dat")
