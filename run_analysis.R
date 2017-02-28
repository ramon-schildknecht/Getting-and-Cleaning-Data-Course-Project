install.packages("plyr")
library(plyr)

filename <- "getdata_dataset.zip"

## 1. Download and unzip the dataset (if it exists not already in the working directory)
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, mode = "wb")
}  

if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

## 2. Merge similar data using the `rbind()` function. Conditions: Files have the same number of columns and referring to the same entities.

##Change working directory
setwd("./UCI HAR Dataset")

##    Merge the test & trainig sets to create one data set
x_train_data <- read.table("train/X_train.txt")
y_train_data <- read.table("train/y_train.txt")
subject_train_data <- read.table("train/subject_train.txt")

x_test_data <- read.table("test/X_test.txt")
y_test_data <- read.table("test/y_test.txt")
subject_test_data <- read.table("test/subject_test.txt")

# generate 'x' data set
x_data <- rbind(x_train_data, x_test_data)

# generate 'y' data set
y_data <- rbind(y_train_data, y_test_data)

# generate 'subject' data set
subject_data <- rbind(subject_train_data, subject_test_data)


## 3. Filter the columns with the mean and standard deviation measures from the whole dataset. First extract these columns, then assign the correct names which taken from `features.txt`.
features_data <- read.table("features.txt")

# get nothing but columns with mean() or std() in their names
filter_mean_and_std_features <- grep("-(mean|std)\\(\\)", features_data[, 2])

# subset the required columns
x_data <- x_data[, filter_mean_and_std_features]

# replace the column names
names(x_data) <- features_data[filter_mean_and_std_features, 2]


## 4. We take the activity names and IDs (values 1:6) from `activity_labels.txt` and substitute them in the dataset.
activities_data <- read.table("activity_labels.txt")

# update values with proper activity names
y_data[, 1] <- activities_data[y_data[, 1], 2]

# add proper column name
names(y_data) <- "activity"


## 5. Checking the whole dataset concerning descriptive column names. Columns with unclear column names are replaced.
# add proper column name
names(subject_data) <- "subject"

# bind all the data in a single data set
all_data <- cbind(x_data, y_data, subject_data)


## 6. Generate a new dataset with all the average measures per subject and activity type. There are: 30 subjects * 6 activities = 180 rows 
## just select 66 out of 68 columns. Reason: last two columns are activity & subject and not needed
averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

##Change working directory and create final file and store it in the folder "Output"
setwd("../.")
dir.create("Output")
setwd("./Output")
write.table(averages_data, "tidy_average_activity_subject.txt", row.name=FALSE)