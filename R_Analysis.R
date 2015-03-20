require("matrixStats")
require("plyr")
require("dplyr")

#Import main datasets 
traindata <- read.table("UCI HAR Dataset/train/X_train.txt",stringsAsFactors=FALSE)
testdata <- read.table("UCI HAR Dataset/test/X_test.txt",stringsAsFactors=FALSE)
trainlabels <- read.table("UCI HAR Dataset/train/y_train.txt",stringsAsFactors=FALSE)
testlabels <- read.table("UCI HAR Dataset/test/y_test.txt",stringsAsFactors=FALSE)
trainsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt",stringsAsFactors=FALSE)
testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt",stringsAsFactors=FALSE)
activitylabels_rows <-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
features_columns <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

#Combine data and label lists by row
allcolumns <- rbind(traindata, testdata)
allrows <- rbind(trainlabels, testlabels)
allsubjects <- rbind(trainsubjects, testsubjects)

#Rename allcolumns and allsubjects column names
colnames(allcolumns) <- features_columns$V2
colnames(allsubjects)[1] <- "Subject"

#Combine All Rows and Columns
alldata <- cbind(allsubjects, allrows, allcolumns)

#Get Activity Values
alldata <- merge(y=alldata, x=activitylabels_rows, by.y="V1", by.x="V1", sort = FALSE)

#Rename updated activitylabels column
colnames(alldata)[2] <- "Activity"

#Clean column labels to be TidyData compliant 
names(alldata)=gsub("-|\\(|\\)|,","",names(alldata))

#Subset by Mean and Standard Deviation columns
newdata <- select(alldata, contains("Activity"), contains("Subject"), contains("mean"), contains("-std"))

#Create second Tidy Data Set
summarydata<- newdata %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

