## Merges the training and the test sets to create one data set

# Combines Training and test data sets
dtTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
dtTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
dt <- rbind(dtTrain, dtTest)

# Assigns column names to the merged data set
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "")
colNames <- features$V2
colNames <- as.character(colNames)
colnames(dt) <- colNames

## Extracts only the measurements on the mean and standard deviation 
## for each measurement

# Extracts data has Mean and Std variables and combines them
dtExtract1 <- dt[, grep("mean()", colnames(dt))]
dtExtract2 <- dt[, grep("std()", colnames(dt))]
dtExtract <- cbind(dtExtract1, dtExtract2)

# Combines activity ID from Training and Test groups and assign its column name
activityTrain <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE, sep = "")
activityTest <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE, sep = "")
activity <- rbind(activityTrain, activityTest)
colnames(activity) <- "activityID"

# Combines subject ID from Training and Test groups and assign its column name
idTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
idTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
id <- rbind(idTrain, idTest)
colnames(id) <- "subjectID"

# Merges extracted data set with activity and subject IDs
dtExtract <- cbind(activity, dtExtract)
dtExtract <- cbind(id, dtExtract)

## Uses descriptive activity names to name the activities in the data set
library(plyr)
dtExtract[, "activityID"] <- mapvalues(dtExtract[, "activityID"], 
              from=c("1","2","3","4","5","6"), to=c("walking","walkingUpstairs",
                     "walkingDownstairs","sitting","standing","laying"))
colnames(dtExtract) <- sub("activityID","activity",colnames(dtExtract))

## Appropriately labels the data set with descriptive variable names
dtExtractName <- dtExtract
colnames(dtExtractName) <- sub("^t","time",colnames(dtExtractName))
colnames(dtExtractName) <- sub("^f","frequency",colnames(dtExtractName))
colnames(dtExtractName) <- sub("Acc","Acceleration",colnames(dtExtractName))
colnames(dtExtractName) <- sub("Gyro","AngularVelocity",colnames(dtExtractName))
colnames(dtExtractName) <- sub("Mag","Magnitude",colnames(dtExtractName))
colnames(dtExtractName) <- sub("BodyBody","Body",colnames(dtExtractName))
colnames(dtExtractName) <- gsub("mean","Mean",colnames(dtExtractName))
colnames(dtExtractName) <- sub("std","Std",colnames(dtExtractName))
colnames(dtExtractName) <- gsub("[[:punct:]]","",colnames(dtExtractName))

## From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject
library(reshape2)

# long form data set
dtTidy <- aggregate(. ~ activity + subjectID, data = dtExtractName, FUN = mean)
dtTidy <- dtTidy[, c(2,1,3:81)]

# wide form data set
# dtTidy <- aggregate(. ~ subjectID + activity, data = dtExtractName, FUN = mean)

# Saves the tidy data set to a text file
write.table(dtTidy, file = "tidyData.txt", sep = "\t", row.name=FALSE) 