# Step 1. Merges the training and the test sets to create one data set:

# read in datasets
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# merge datasets
xData <- rbind(x_train, x_test)
yData <- rbind(y_train, y_test)
sData <- rbind(subject_train, subject_test)

# to be continued...(Step 4)


# Step 2. Extracts only the measurements on the mean and standard deviation for each measurement:

# read in features dataset
features <- read.table("./UCI HAR Dataset/features.txt")

# get only columns with "mean" or "std"
meanAndStd <- grepl("mean|std", features[, 2])

# subset xData to get the desired columns
xData <- xData[, meanAndStd]

# assign column names
names(xData) <- features[meanAndStd, 2]


# Step 3. Uses descriptive activity names to name the activities in the data set:

# read in activities dataset
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# assign activity names
yData[, 1] <- activities[yData[, 1], 2]

# Assign column name
names(yData) <- "activity"


# Step 4. Appropriately labels the data set with descriptive variable names.

# assign column name
names(sData) <- "subject"

# merge all the data into one data set
fullData <- cbind(xData, yData, sData)

# Step 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.

library(plyr)

# apply colMeans() function to all the columns except the last two
finalData <- ddply(fullData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(finalData, "Final_Data.txt", row.name=FALSE)