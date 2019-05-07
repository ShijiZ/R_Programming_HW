setwd("/Users/shijizhao/Documents/UCI/Courses/R\ Programming/Week7")

# Read Training data
(train=read.csv("./HW07Train.csv"))

# Remove the Visitor ID from Training Data
(train<-train[c("Previously_Visited","SessionLength","PageViews","Will_Visit_Again")])

# Make all the columns as factors
train$Previously_Visited<-factor(train$Previously_Visited, levels=c("No","Yes"))
train$SessionLength<-factor(train$SessionLength, levels=c("Short","Average","Long"))
train$PageViews<-factor(train$PageViews, levels=c("Low","Medium","High"))

# Read Test data
(test=read.csv("./HW07Test.csv"))

# Remove the Visitor ID from Test Data -Also remove the class variable
(test<-test[c("Previously_Visited","SessionLength","PageViews")])

# Make all the columns as factors
test$Previously_Visited<-factor(test$Previously_Visited, levels=c("No","Yes"))
test$SessionLength<-factor(test$SessionLength, levels=c("Short","Average","Long"))
test$PageViews<-factor(test$PageViews, levels=c("Low","Medium","High"))

# For Naive BayesClassification
library(e1071)
#Train classifier, using laplace estimator classifier
(classifier<-naiveBayes(train$Will_Visit_Again~.,train,laplace=0))
(predictions<-predict(classifier,test,type="raw"))

