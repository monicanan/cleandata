＃please be advised the directory should be in the folder of UCI HAR dataset
#training with activity label
train<-read.table("train/X_train.txt")
trainLabel<-read.table("train/y_train.txt")
subjecttrain<-read.table("train/subject_train.txt")
train<-cbind(trainLabel,subjecttrain,train)
#test with activity label
test<- read.table ("test/X_test.txt")
testLabel<-read.table("test/y_test.txt")
subjecttest<-read.table("test/subject_test.txt")
test<-cbind(testLabel,subjecttest,test)
#1.combine training and testing
mydata<-rbind(train,test)
#adding column variable names
featureNames<-read.table("features.txt")
colname<-c("labelID","subject",t(featureNames)[2,])
colname<-make.unique(colname)
colnames(mydata)<-colname
#2.loading library to extract dataset
library(dplyr)
library(tidyr)
mydata<-tbl_df(mydata)
extract<-select(mydata,labelID,subject,contains('mean()'),contains('std()'))
#3.Uses descriptive activity names to name the activities in the data set
label<-read.table("activity_labels.txt")
extract<-merge(label,extract,by.x="V1",by.y="labelID")
#4.Appropriately labels the data set with descriptive variable names. 
colnames(extract)[1:2]<-c("labelID","activity")
extract<-select(extract,-labelID)
#5.Create independent tidy data set with the average of each variable for each activity and each subject.
#using chain
tidy<-extract %>% group_by(activity,subject) %>% summarise_each(funs(mean))
write.table(tidy,"step5data.txt",row.names=FALSE,col.names=TRUE)

