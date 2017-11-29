# Course Project - Getting and Cleaning Data

The course project for [Getting and Cleaning Data](https://www.coursera.org/course/getdata) read in the ["Human Activity Recognition Using Smartphones" data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), perform an analysis on the data set, and output a tidy data set.

## Author

Frank Chi <frank.m.chi@gmail.com>

## Instructions

**You can download and run the R Script ([run_analysis.R](run_analysis.R)) within current working directory.** Note that the script requires **dplyr** and **data.table** packages.

**The output of the R script is a tidy data set, [tidydata.txt](tidydata.txt).**

You can read more about the data and the analysis in the [code book](CodeBook.md).

## Script Walkthrough

The R Script ([run_analysis.R](run_analysis.R)) will perform the following steps:

* Create working directory 'data' if it does not exist
* Download data set archived file from [this URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip if it has not been downloaded. Note that the zip file will be stored in the new created **'data'** directory and named **'UCI-HAR-Dataset.zip'**.
* Reads training and test data set files (Note that these files are stored on **'data/UCI HAR Dataset/train/'** and **'data/UCI HAR Dataset/test/'** directory)
* Reads feature names and activity labels (Note that these files are stored on **'data/UCI HAR Dataset/'** directory)
* Merges training set and test set to create one data set
* Extracts measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* Creates an independent tidy data set with the average of each variable for each activity and each subject
* Saves the resulting tidy data set to file **'tidydata.txt'** on current working directory

## Test Environment

The R Script ([run_analysis.R](run_analysis.R)) had been tested on following environment:

RStudio version 1.1.383 - (C) 2009-2017 RStudio, Inc.  
R version 3.4.1 (2017-06-30) -- "Single Candle"  
Copyright (C) 2017 The R Foundation for Statistical Computing  
Platform: x86_64-w64-mingw32/x64 (64-bit)  
