
#loading libraries
library(sqldf)
library(data.table)


#Read variable names and create name list (to be added to end result)
features<-read.table(file="features.txt", header = FALSE, sep="")
name<-as.data.frame(features[,2]) #only use the name
colnames(name)[1] <- "Name"
df = data.frame(c("Subject","Activity"))
colnames(df)[1] <- "Name"
name<-rbind(df,name) #Add already the Subject and Activity to the var names

#Read activity names
activities<-read.table(file="activity_labels.txt", header = FALSE, sep="")

#Read test files
x_test=read.table(file="X_test.txt", header = FALSE, sep="")
y_test=read.table(file="y_test.txt", header = FALSE, sep="")
sub_test=read.table(file="subject_test.txt", header = FALSE, sep="")

#Read train files
x_train=read.table(file="X_train.txt", header = FALSE, sep="")
y_train=read.table(file="y_train.txt", header = FALSE, sep="")
sub_train=read.table(file="subject_train.txt", header = FALSE, sep="")

#Combine test and train data
x_total<- rbind(x_test, x_train)
y_new<- rbind(y_test, y_train)
sub_total<-rbind(sub_test, sub_train)

#combine into one single data frame
data<-cbind(sub_total,y_new,x_total)
#set names for this data frame
names(data) <- name$Name

#only select mean and std cols (and Subject and Activity of course)
name$ID<-seq.int(nrow(name))
IDs<-sqldf("select ID from name where Name like '%std()%'or
      Name like '%mean()%' or Name is 'Subject' or Name is 'Activity' ")
subset<-data[,IDs$ID]


#Calculate average of each variable for each activity and each subject
dt<-data.table(subset,keep.rownames=FALSE)
tidy<-dt[, lapply(.SD, mean(.SD), na.rm=TRUE), by=list(Subject,Activity) ]

#Give acitivy meaningful names and re-order so that Act and Subj in front
tidydf<-as.data.frame(tidy)
tidyname <-merge(tidydf,activities,by.x="Activity", by.y="V1")
cols<-ncol(tidyname)
tidyname<-tidyname[,2:cols]
cols<-ncol(tidyname)
nexttocols<-cols-1
tidyname<-cbind(tidyname[,cols],tidyname[,1:nexttocols])
colnames(tidyname)[1] <- "Activity"

#write tidy data to file
write.table(tidyname,file="tidy_data_set.txt", row.names=FALSE)

