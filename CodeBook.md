#Codebook

##Description
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

##Data Set
The following explanation is cited from the [data source page] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones):

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Attribute information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Variables
_to be reviewed_

###Identifiers
* `subject` - ID of the test subject
* `activity` - Type of activity performed when the corresponding measurements were taken

###Key measurements
Only the measurements concerning the mean or standard deviation are in scope. Examples are:

1. "tBodyAcc-mean()-X"
2. "tBodyAcc-mean()-Y"
3. "tBodyAcc-mean()-Z"
4. "tBodyAcc-std()-X"
5. "tBodyAcc-std()-Y"
6. "tBodyAcc-std()-Z"
7. "tGravityAcc-mean()-X"
8. "tGravityAcc-mean()-Y"
9. "tGravityAcc-mean()-Z"
10. "tGravityAcc-std()-X"


###Activity Labels regarding test
* (value `1`) `WALKING`: subject was walking
* (value `2`) `WALKING_UPSTAIRS`: subject was walking up a staircase 
* (value `3`) `WALKING_DOWNSTAIRS`: subject was walking down a staircase
* (value `4`) `SITTING`: subject was sitting 
* (value `5`) `STANDING`: subject was standing
* (value `6`) `LAYING`: subject was laying down
