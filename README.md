# Getting and Cleaning Data Course Project

##Overview

This project serves to demonstrate the ability to collect, work with and clean a messy data set. The goal is a tidy datasety that can be used for further analysis. A full description of the data used in this project can be found at [The UCI Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The source data is  here available.] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Step by Step
The R script `run_analysis.R` executes the following steps:

1. Download the dataset (if it exists not already in the working directory)
2. Merge similar data using the rbind() function. Conditions: Files have the same number of columns and referring to the same entities.
3. Filter the columns with the mean and standard deviation measures from the whole dataset. First extract these columns, then assign the correct names which taken from `features.txt`.
4. We take the activity names and IDs (values 1:6) from `activity_labels.txt` and substitute them in the dataset.
5. Checking the whole dataset concerning descriptive column names. Columns with unclear column names are replaced.
6. Generate a new dataset with all the average measures per subject and activity type. There are: 30 subjects * 6 activities = 180 rows The output file is called `averages_data_per_subject_and_activity.txt` and you will find it as example in this directory. When you generate it yourself you will find it in your working directory using `getwd()`

##Output
The final output is `tidy_average_activity_subject.txt`. The data set meets the requirements of the paper [Tidy Data from Hadley Wickham] (https://www.jstatsoft.org/article/view/v059i10).

##Extra Information
Additional information about variables, transformations and data are specified in the CodeBook.
