## Read tables for each data set and cbind them to get one data frame with columns for subjects, activities, and data. 
setwd("~/UCI HAR Dataset")
test <- read.table("~/UCI Har Dataset/test/X_test.txt")
test.subjects <- read.table("~/UCI HAR Dataset/test/subject_test.txt")
test.activities <- read.table("~/UCI HAR Dataset/test/y_test.txt")
test.df <- cbind(test.subjects, test.activities, test)

training <- read.table("~/UCI Har Dataset/train/X_train.txt")
training.subjects <- read.table("~/UCI Har Dataset/train/subject_train.txt")
training.activities <- read.table("~UCI Har Dataset/train/y_train.txt")
training.df <- cbind(training.subjects, training.activities, training)

## Merge both data frames into one.
activity.df <- rbind(training.df, test.df)

## change column names in the data frame. 
   ## First, open the variables names data frame.
features <- read.table("~/UCI Har Dataset/features.txt") 
   ## Second, extract the column with the names, including the first two columns, to a vector and then assign it as column names of the data frame 
col.names <- c("Subject", "Activity")
features.names <- as.character (features[, 2])
features.names <- c(col.names, features.names)
colnames(activity.df) <- features.names

##Extract only the means and standard deviations for each measurement. 
      ## Use grepl,that matches patterns in a character vector and merge new data frame with subject and activity columns
activity.msd <- activity.df[, grepl("\\bmean()\\b|\\bstd()\\b",colnames(activity.df))] 
act.2columns <- activity.df[, 1:2]
activity.msd <- cbind(act.2columns, activity.msd)

## Use descriptive activity names to name the activities in the data set
       ## Read activity_labels.txt, and substitute values of "Activity" column of activity.msd dataframe to character values. 
act.labels <- read.table("~/UCI Har Dataset/activity_labels.txt")
activity.msd$Activity <- act.labels$V2[activity.msd$Activity]


## Tidy DATA: Open dplyr library, and group by subject and activity, to obtain the average of the variables for each subject in each activity.
library(dplyr)
activity.msd <- tbl_df(activity.msd)
activity.groups <- group_by(activity.msd, Subject, Activity)
average <- summarise_each(activity.groups, funs(mean), c(3:67))
colnames(average) <- paste("Mean", colnames(average), sep = "_")
colnames(average)[colnames(average)=="Mean_Subject"] <- "Subject"
colnames(average)[colnames(average)=="Mean_Activity"] <- "Activity"
write.table(average, file = "average.txt", row.names = FALSE)
