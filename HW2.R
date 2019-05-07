# Q1
x<-5+8i
x
y<--6+7i
y
u<-x+y
u
v<-x*y
v
w<-x/y
w
z<-exp(x)
z
r<-sqrt(y)
r
s<-x*y^2
s

#Q2
(3+6i)*(-7-9i)
(5+4i)/(5-4i)
3/(2i)

#Q3
exp((-2.1)^3)+3.47*log(14)+287^(1/4)
(3.4)^7*log(14)+287^(1/4)
(cos(4.12*pi/6))^2
cos((4.12*pi/6)^2)

#Q4
x<-6
z<-(x<10)
z
z<-(x==10)
z
z<-(x>=4)
z
z<-(x!=7)
z

#Q5
z<-(6>3+8)
z
z<-(6+3>8)
z
z<-(4>(2+9))
z
z<-((4<7)+3)
z
z<-(4<7)^5
z
z<-4<(7*5)
z
z<-((2/5)>=5)
z

#Q6
A<-matrix(c(3,-5,6,15,7,9,13,5,-4,10,8,4,12,2,11,1),nrow=4)
A
V<-A[,2]
V
W<-A[2,]
W

#Q7
VNorm<-rnorm(20, mean=10, sd=5)
VNorm
sort(VNorm)
trim<-function(x) sort(x)[-c(1,2,length(x)-1,length(x))]
trim(VNorm)

#Q8
TempData<-read.table("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week2/temperatures.txt",header=T)
mean(TempData$temperature)
max(TempData$temperature)
min(TempData$temperature)
sd(TempData$temperature)
var(TempData$temperature)
range(TempData$temperature)
mean(TempData$rain)
max(TempData$rain)
min(TempData$rain)
sd(TempData$rain)
var(TempData$rain)
range(TempData$rain)

#Q9
YearTemp<-tapply(temperature, yr, mean)
YearTemp
which(YearTemp==min(YearTemp))
which(YearTemp==max(YearTemp))

# Q10
VNorm<-rnorm(100, mean=50, sd=50)
hist(VNorm)
which(abs(VNorm-100)==min(abs(VNorm-100)))
VNorm[which(abs(VNorm-100)==min(abs(VNorm-100)))]