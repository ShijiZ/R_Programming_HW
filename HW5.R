#Q1
#a
t<-seq(0,50000,100)
b<--(1/5000)*log(1/2)
Ct_C0<-exp(-b*t)
plot(t, Ct_C0, type="l", ylab="C(t)/C(0)")

#b
b<--(1/5000)*log(1/2)
t<--(1/b)*log(0.9)
t

#Q2
A<-matrix(c(4,6,7,-2,8,9,1,-5,10),nrow=3)
B<-matrix(c(6,7,-8,9,5,2,-4,3,1),nrow=3)
C<-matrix(c(-4,10,3,-5,6,-9,2,1,8),nrow=3)
#a
A%*%(B+C)
A%*%B+A%*%C
#b
(A%*%B)%*%C
A%*%(B%*%C)

#Q3
p<-list()
p[[1]]<-c(-2,-20)
p[[2]]<-c(0,4)
p[[3]]<-c(2,68)
p[[4]]<-c(4,508)
p[[1]][1]
A<-list()
for (i in 1:4)
{
  A[[i]]<-c(p[[i]][1]^3,p[[i]][1]^2,
            p[[i]][1]^1,p[[i]][1]^0)
}
A<-t(matrix(c(A[[1]],A[[2]],A[[3]],A[[4]]),nrow=4))
B<-matrix(c(p[[1]][2],p[[2]][2],
            p[[3]][2],p[[4]][2]),nrow=4)
sol<-solve(A,B)
sol

#Q4
max<-18
min<-2
N<-(max-min)*runif(1000)+min
mean(N)
hist(N)

#Q5
N<-rnorm(1000, mean=20, sd=4)
mean(N)
sd(N)
hist(N)

#Q6
x<-rnorm(10000, mean=8, sd=sqrt(2))
y<-rnorm(10000, mean=15, sd=sqrt(4))
mean(x+y)
mean(x)+mean(y)
var(x+y)
var(x)+var(y)