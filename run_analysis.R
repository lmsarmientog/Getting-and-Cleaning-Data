## Dowload the data

if(!file.exists("./data")){dir.create("./data")}
#Here are the data for the project:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## 1. Read the files that are going to be used from the archive "UCI HAR Dataset" 

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
columnames <- read.table("./UCI HAR Dataset/features.txt")

## 2. Before merge the training and test sets is necessary to complete or organise each one.
## 2.1. Organise the test set

names(x_test) <- c(columnames$V2) ## Assign the name of the variables according to the features data.
test <- cbind(subject_test, y_test, x_test)  ## Unify the three data sets corresponding to test.
names(test)[1:2] <- paste(c("subject","activity")) ## Name the first two columns that were added.

## 2.2. Organise the train set

names(x_train) <- c(columnames$V2)
train <- (cbind(subject_train, y_train, x_train))
names(train)[1:2] <- paste(c("subject","activity"))

## STEP 1 ASSIGMENT: Merges the training and the test sets to create one data set.

train_test <- rbind(train,test)

## STEP 2 ASSIGMENT: Extracts only the measurements on the mean and standard 
# deviation for each measurement.

library(dplyr)

train_test <- select(train_test, grep("subject|activity|mean|std", names(train_test)))

## STEP 3 ASSIGMENT: Uses descriptive activity names to name the activities in the data set.

train_test$activity <- activity_labels[train_test$activity, 2]

## STEP 4 ASSIGMENT: Appropriately labels the data set with descriptive variable names.

names(train_test) <- gsub("\\-|\\()","",names(train_test))

## STEP 5 ASSIGMENT: 5.	From the data set in step 4, creates a second, independent 
# tidy data set with the average of each variable for each activity and each subject.

avg_activity_subject <- train_test %>% 
  group_by(activity, subject) %>% 
   summarise_all(mean)

View(avg_activity_subject)

#Writing second tidy data set in txt file

write.table(avg_activity_subject, "Tidydata.txt", row.name=FALSE)

