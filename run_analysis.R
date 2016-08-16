#load reshape2 library for later data melting
library(reshape2)

#Download files and unzip
setwd("~/Data Science Coursera/Course3_Getting_Data/assignment")
if (!file.exists("data")){
    dir.create("data")
}

if (!file.exists("./data/wearables.zip")){
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    
    download.file(fileUrl, destfile = "./data/wearables.zip")
}

if (!file.exists("./data/UCI HAR Dataset")){
    unzip(zipfile = "./data/wearables.zip", exdir = "./data")
}

setwd("./data/UCI HAR Dataset")

#Read in all datasets
features <- read.table("features.txt", col.names=c("featureID","featureName"))
activityLabels <- read.table("activity_labels.txt", col.names=c("activityID","activityName"))

train <- read.table("./train/X_train.txt")
trainLabels <- read.table("./train/y_train.txt")
trainSubjects <- read.table("./train/subject_train.txt")

test <- read.table("./test/X_test.txt")
testLabels <- read.table("./test/y_test.txt")
testSubjects <- read.table("./test/subject_test.txt")

#Rename columns to ease merging of datasets
featureNames <- features[,2]
colnames(train) <- featureNames
colnames(test) <- featureNames
colnames(trainLabels) <- "activityID"
colnames(testLabels) <- "activityID"
colnames(trainSubjects) <- "subjectID"
colnames(testSubjects) <- "subjectID"

#Merge test and train dataframes with labels and subjects dataframes
trainData <- cbind(trainSubjects, trainLabels, train)
testData <- cbind(testSubjects, testLabels, test)
allData <- rbind(trainData,testData)

#Remove unnecessary columns from allData
keepColumnsIndex <- grep("*std*|*mean*", names(allData))
keepColumnsNames <- names(allData)[keepColumnsIndex]
allData.meanStd <- allData[,c("subjectID","activityID", keepColumnsNames)]

#merge dataset with descriptive activity names
allData.names <- merge(activityLabels, allData.meanStd, by.x = "activityID", by.y = "activityID", all = TRUE)

#melt dataset so it is easier to calculate mean by subject and activity type
allData.melted <- melt(allData.names, id = c("activityID", "activityName", "subjectID"))

#calculate mean
allData.mean <- dcast(allData.melted, subjectID + activityName ~ variable,mean)

#write allData.mean to text file
write.table(allData.mean, "../tidy.txt", row.names = FALSE, quote = FALSE)
