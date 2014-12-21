# load the required libraries
library(plyr)

## Merge the train and the test data sets to create one data set

# read in the train data
subject_train <- read.table("UCI HAR Dataset\\/train\\/subject_train.txt", 
    header = FALSE, stringsAsFactors = FALSE)
x_train <- read.table("UCI HAR Dataset\\/train\\/X_train.txt", 
    header = FALSE, stringsAsFactors = FALSE)
y_train <- read.table("UCI HAR Dataset\\/train\\/y_train.txt", 
    header = FALSE, stringsAsFactors = FALSE)

# merge the three train data sets
if(nrow(subject_train) != nrow(x_train) || nrow(subject_train) != nrow(y_train)) {
    stop("Cannot merge train data")
}
train <- cbind(subject_train, x_train, y_train)

# removed the merged data (to reduce memory usage)
rm(list = c("x_train", "y_train", "subject_train"))

# read in the test data
subject_test <- read.table("UCI HAR Dataset\\/test\\/subject_test.txt", 
    header = FALSE, stringsAsFactors = FALSE)
x_test <- read.table("UCI HAR Dataset\\/test\\/X_test.txt", 
    header = FALSE, stringsAsFactors = FALSE)
y_test <- read.table("UCI HAR Dataset\\/test\\/y_test.txt", 
    header = FALSE, stringsAsFactors = FALSE)

# merge the three train data sets
if(nrow(subject_test) != nrow(x_test) || nrow(subject_test) != nrow(y_test)) {
    stop("Cannot merge test data")
}
test <- cbind(subject_test, x_test, y_test)

# remove the merged data (to reduce memory usage)
rm(list = c("x_test", "y_test", "subject_test"))

# merge the train and test data sets
if(ncol(train) != ncol(test)) {
    stop("Cannot merge train and test data")
}
data <- rbind(train, test)

# remove the merged data (to reduce memory usage)
rm(list = c("train", "test"))

## Extract the variables of the mean and standard deviation for each variable

# read in the list of variabes
features <- read.table("UCI HAR Dataset\\/features.txt", 
                       header = FALSE, stringsAsFactors = FALSE)

# identify variables of the mean and standard deviation for each variable
indicies <- sort(c(grep("-mean\\(\\)", features[,2]), 
                   grep("-std\\(\\)", features[,2])))

# extract the variables of the mean and standard deviation for each variable
data <- data[, c(1, 1 + indicies, ncol(data))]

## Use descriptive activity names to name the activities in the data set

# read in the activity labels
activities <- read.table("UCI HAR Dataset\\/activity_labels.txt", 
                         header = FALSE, stringsAsFactors = FALSE)

# replace the activity ids with activity labels
data[, ncol(data)] <- tolower(activities[data[, ncol(data)], 2])

## Appropriately label the data set with descriptive variable names

# name the columns with the variable names (detailed description available in the codebook)
names(data) <- c("subject_id", features[indicies, 2], "activity_label")

# rename the columns with (slightly) more descriptive variable names
names(data) <- gsub("^t", "time-", names(data))
names(data) <- gsub("^f", "freq-", names(data))

# clean up the column names by removing the "()"
names(data) <- gsub("\\(\\)", "", names(data))

# clean up the column names by removing "BodyBody" error
names(data) <- gsub("BodyBody", "Body", names(data))

# write the data to a file
write.table(x = data, file = "tidy_data_full.txt", row.names = FALSE)

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject

# calculate the average of each variable for each activity and each subject
data_summary <- ddply(data, .(activity_label, subject_id), function(x) {
                    colMeans(x[, c(-1, -ncol(x))])
                })

# write the data to a file
write.table(x = data_summary, file = "tidy_data_summary.txt", row.names = FALSE)
