# Code Book

This code book summarizes the resulting data fields of Human Activity Recognition Using Smartphones Data Set in **_tidydata.txt_**. 

## Source Data Set

The source data set represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The data set for the project can be downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Source Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Source Files

The source files we use to create the tidy data set are:

* `features_info.txt`: information about the variables used on the feature vector.
* `features.txt`: list of all features.
* `activity_labels.txt`: label of activity
* `train/X_train.txt`: training data set.
* `train/y_train.txt`: training data label.
* `train/subject_train.txt`: identifies of the subject who performed the activity (ranged from 1 to 30).
* `test/X_test.txt`: test data set.
* `test/y_test.txt`: test data label.
* `test/subject_test.txt`: identifies of the subject who performed the activity (ranged from 1 to 30).

## Tidy Data Set
Extracts Only the measurements on the mean and standard deviation for each measurement on both training and test data set were kept. The tidy data set has the average of each variable for each activity and each subject.

## Variable of Tidy Data Set

1. activityLabel: the field has One of Six activity as listed below: 
* WALKING
* WALKING_UPSTAIRS 
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

2. subject: identifier of the subject (number sequenced from 1 to 30) who carried out the experiment

3. Measurments: 66 average of mean or standard deviation measurement 
* tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z
* tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z
* tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z
* tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z
* tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z
* tBodyAccMag-mean(), tBodyAccMag-std()
* tGravityAccMag-mean(), tGravityAccMag-std()
* tBodyAccJerkMag-mean(), tBodyAccJerkMag-std()
* tBodyGyroMag-mean(), tBodyGyroMag-std()
* tBodyGyroJerkMag-mean(), tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z
* fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z
* fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z
* fBodyAccMag-mean(), fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean(), fBodyBodyGyroJerkMag-std()

