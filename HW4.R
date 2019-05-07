#Q1
Leibniz<-function(n)
{
  sum<-0
  for (k in 0:n)
  {
    sum<-sum+(-1)^k/(2*k+1)
  }
  return(sum)
}
nlist<-0:200
Slist<-c()
for (n in nlist)
{
  Slist[[n+1]]<-Leibniz(n)
}
plot(nlist, Slist-pi/4, xlab="n", ylab="S(n)", type="l")

#Q2
z<-700:1600
pd<-dnorm(z, mean=1152, sd=84)
plot(z, pd, type="l")
#a
polygon(c(1250,z[z>=1250]), c(pd[z==1600],pd[z>=1250]), col="red")
#b
polygon(c(z[z<=1200],1200), c(pd[z<=1200],pd[z==700]), col="red")
#c
polygon(c(1000,z[1000<=z&z<=1100],1100), 
        c(min(pd[z==700],pd[z==1600]),
          pd[1000<=z&z<=1100],
          min(pd[z==700],pd[z==1600])), col="red")

#Q3
TempData<-read.table("/Users/shijizhao/Documents/UCI/Courses
                     /R\ Programming/Week2/temperatures.txt",header=T)
attach(TempData)
plot(factor(month), temperature, xlab="month", ylab="high temperature")

#Q4
par(mfrow=c(3,3))
x<-0:8
for (p in seq(0.1,0.9,0.1))
{
  y<-dbinom(x,size=8,prob=p)
  barplot(y, xlab="Trials", ylab="Probability", ylim=c(0,0.5))
  text(4.5, 0.45, sprintf("p=%s, Trials=8", p))
}