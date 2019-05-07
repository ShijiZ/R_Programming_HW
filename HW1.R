# Q1
x<-100:109
x
y<-c(34,28,45,67,89,93,24,49,11,7)
y
x+y

#Q2
a<-1.12
b<-2.34
c<-0.72
d<-0.81
f<-19.83
x<-1+a/b+c/f^2
x
s<-(b-a)/(d-c)
s
r<-1/(1/a+1/b+1/c+1/d)
r
y<-a*b*(1/c)*(f^2/2)
y

#Q3
Car<-read.csv("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week1/HW01-Prob3Data.csv", header=T)
str(Car)