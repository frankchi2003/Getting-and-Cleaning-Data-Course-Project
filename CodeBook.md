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

3. Measurments: 86 average of mean or standard deviation measurement 
 [1] "timeBodyAccelerometer-mean()-X"                     "timeBodyAccelerometer-mean()-Y"                    
 [3] "timeBodyAccelerometer-mean()-Z"                     "timeBodyAccelerometer-std()-X"                     
 [5] "timeBodyAccelerometer-std()-Y"                      "timeBodyAccelerometer-std()-Z"                     
 [7] "timeGravityAccelerometer-mean()-X"                  "timeGravityAccelerometer-mean()-Y"                 
 [9] "timeGravityAccelerometer-mean()-Z"                  "timeGravityAccelerometer-std()-X"                  
[11] "timeGravityAccelerometer-std()-Y"                   "timeGravityAccelerometer-std()-Z"                  
[13] "timeBodyAccelerometerJerk-mean()-X"                 "timeBodyAccelerometerJerk-mean()-Y"                
[15] "timeBodyAccelerometerJerk-mean()-Z"                 "timeBodyAccelerometerJerk-std()-X"                 
[17] "timeBodyAccelerometerJerk-std()-Y"                  "timeBodyAccelerometerJerk-std()-Z"                 
[19] "timeBodyGyroscope-mean()-X"                         "timeBodyGyroscope-mean()-Y"                        
[21] "timeBodyGyroscope-mean()-Z"                         "timeBodyGyroscope-std()-X"                         
[23] "timeBodyGyroscope-std()-Y"                          "timeBodyGyroscope-std()-Z"                         
[25] "timeBodyGyroscopeJerk-mean()-X"                     "timeBodyGyroscopeJerk-mean()-Y"                    
[27] "timeBodyGyroscopeJerk-mean()-Z"                     "timeBodyGyroscopeJerk-std()-X"                     
[29] "timeBodyGyroscopeJerk-std()-Y"                      "timeBodyGyroscopeJerk-std()-Z"                     
[31] "timeBodyAccelerometerMagnitude-mean()"              "timeBodyAccelerometerMagnitude-std()"              
[33] "timeGravityAccelerometerMagnitude-mean()"           "timeGravityAccelerometerMagnitude-std()"           
[35] "timeBodyAccelerometerJerkMagnitude-mean()"          "timeBodyAccelerometerJerkMagnitude-std()"          
[37] "timeBodyGyroscopeMagnitude-mean()"                  "timeBodyGyroscopeMagnitude-std()"                  
[39] "timeBodyGyroscopeJerkMagnitude-mean()"              "timeBodyGyroscopeJerkMagnitude-std()"              
[41] "frequencyBodyAccelerometer-mean()-X"                "frequencyBodyAccelerometer-mean()-Y"               
[43] "frequencyBodyAccelerometer-mean()-Z"                "frequencyBodyAccelerometer-std()-X"                
[45] "frequencyBodyAccelerometer-std()-Y"                 "frequencyBodyAccelerometer-std()-Z"                
[47] "frequencyBodyAccelerometer-meanFreq()-X"            "frequencyBodyAccelerometer-meanFreq()-Y"           
[49] "frequencyBodyAccelerometer-meanFreq()-Z"            "frequencyBodyAccelerometerJerk-mean()-X"           
[51] "frequencyBodyAccelerometerJerk-mean()-Y"            "frequencyBodyAccelerometerJerk-mean()-Z"           
[53] "frequencyBodyAccelerometerJerk-std()-X"             "frequencyBodyAccelerometerJerk-std()-Y"            
[55] "frequencyBodyAccelerometerJerk-std()-Z"             "frequencyBodyAccelerometerJerk-meanFreq()-X"       
[57] "frequencyBodyAccelerometerJerk-meanFreq()-Y"        "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
[59] "frequencyBodyGyroscope-mean()-X"                    "frequencyBodyGyroscope-mean()-Y"                   
[61] "frequencyBodyGyroscope-mean()-Z"                    "frequencyBodyGyroscope-std()-X"                    
[63] "frequencyBodyGyroscope-std()-Y"                     "frequencyBodyGyroscope-std()-Z"                    
[65] "frequencyBodyGyroscope-meanFreq()-X"                "frequencyBodyGyroscope-meanFreq()-Y"               
[67] "frequencyBodyGyroscope-meanFreq()-Z"                "frequencyBodyAccelerometerMagnitude-mean()"        
[69] "frequencyBodyAccelerometerMagnitude-std()"          "frequencyBodyAccelerometerMagnitude-meanFreq()"    
[71] "frequencyBodyAccelerometerJerkMagnitude-mean()"     "frequencyBodyAccelerometerJerkMagnitude-std()"     
[73] "frequencyBodyAccelerometerJerkMagnitude-meanFreq()" "frequencyBodyGyroscopeMagnitude-mean()"            
[75] "frequencyBodyGyroscopeMagnitude-std()"              "frequencyBodyGyroscopeMagnitude-meanFreq()"        
[77] "frequencyBodyGyroscopeJerkMagnitude-mean()"         "frequencyBodyGyroscopeJerkMagnitude-std()"         
[79] "frequencyBodyGyroscopeJerkMagnitude-meanFreq()"     "angle(timeBodyAccelerometerMean,gravity)"          
[81] "angle(timeBodyAccelerometerJerkMean,gravityMean)"   "angle(timeBodyGyroscopeMean,gravityMean)"          
[83] "angle(timeBodyGyroscopeJerkMean,gravityMean)"       "angle(X,gravityMean)"                              
[85] "angle(Y,gravityMean)"                               "angle(Z,gravityMean)"                              

