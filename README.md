# Course Project - Getting and Cleaning Data

## Author

Frank Chi <frank.m.chi@gmail.com>

## Instructions

download and run run\_analysis.R script from within the download directory.

This script will download files described in Data Source and process for generating a tidy data set at `./tidydata.txt`

## Data Source

This project uses the "Human Activity Recognition Using Smartphones Dataset". Data set download from:
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
save to:
	./data/Dataset.zip by run\_analysis.R from:

## Script Walkthrough

The run\_analysis.R script will perform the following steps:

* Ensure working directory 'data' exists
* Check if archieved data set file exists
* If archieved file does not exit, downloads it and extracts all files   
* Reads training and test data set files (Note that these file are stored on 'data/UCI HAR Dataset/train/' and 'data/UCI HAR Dataset/test/' directory)
* Reads feature names and activity labels (Note that these file are stored on 'data/UCI HAR Dataset/' directory)
* Merges training set and test set to create one data set
* Extracts measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* Creates an independent tidy data set with the average of each variable for each activity and each subject
* Saves the resulting tidy data set to file **_tidydata.txt_** on current working directory

## Test Environment

The run\_analysis.R script has been tested on following environment:

RStudio version 1.1.383 - (C) 2009-2017 RStudio, Inc.
R version 3.4.1 (2017-06-30) -- "Single Candle"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)
