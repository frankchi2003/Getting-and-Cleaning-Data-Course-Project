## The function is to prepare tidy data that can be used for later analysis. 
run_analysis <- function() {
    
    library(dplyr)
    library(data.table)

    curwd <- getwd()

    ## download/unzip the data for the project
    ## project files are stored on local "data" folder
    datadir <- "data"
    if (!file.exists(datadir)) {
        message(paste("Create data directory on", curwd, "...", sep=" "))
        dir.create(datadir)
    }
    
    ## download project zip file if it doesn't exist
    destfile<- paste(datadir, "UCI-HAR-Dataset.zip", sep="/")
    if (!file.exists(destfile)) {
        message(paste("Downloading data set archived file to",destfile,"...", sep=" "))
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile=destfile, mode="wb")

        ## unzip the project files
        message(paste("Extracting the data set files from the archive to",datadir,"...",sep=" "))
        unzip(destfile, exdir=datadir)
    }
    
    ## Content of project zip file
    ## the zip file contains train dataset and test dataset:
    ## train dataset - stored in data/UCI HAR Dataset/train folder
    ## - X_train.txt: data set (561 features) of the experiments
    ## - y_train.txt: predicted label
    ## - subject_train.txt: identifier of the subject (30 devices) who carried out the experiment
    ## test dataset - stored in data/UCI HAR Dataset/test folder
    ## - X_test.txt: test data set (561 features) of the experiments
    ## - y_test.txt: test label
    ## - subject_test.txt: identifier of the subject (30 devices) who carried out the experiment
    
    dsdir <- "data/UCI HAR Dataset"
    ## read train data, lebel and subject
    message("Reading training data set...")
    X_train <- fread(paste(dsdir,"train/X_train.txt", sep="/"))
    Y_train <- fread(paste(dsdir,"train/y_train.txt", sep="/"))
    subject_train <- fread(paste(dsdir,"train/subject_train.txt", sep="/"))
    
    ## read test data, lable and subject
    message("Reading test data set...")
    X_test <- fread(paste(dsdir,"test/X_test.txt", sep="/"))
    Y_test <- fread(paste(dsdir,"test/y_test.txt", sep="/"))
    subject_test <- fread(paste(dsdir,"test/subject_test.txt", sep="/"))
    
    ## read feature vector (561-features)
    message("Reading feature vector...")
    feature_names <- fread(paste(dsdir,"features.txt", sep="/"))
    
    ## read activity lebels
    ## 6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
    message("Reading activity label...")
    activity_labels <- fread(paste(dsdir,"activity_labels.txt", sep="/"))
    
    ## 1. Merges the training and the test sets to create one data set
    message("Mergeing training and test sets...")
    X <- rbind(X_train, X_test)
    Y <- rbind(Y_train, Y_test)
    Subject <- rbind(subject_train, subject_test)
    
    ## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
    message("Extracting mean and std variables...")
    selected_features <- feature_names[grep("mean\\(\\)|std\\(\\)",feature_names$V2),]
    cols = paste("V", selected_features$V1, sep="")
    X <- X[,cols,with=FALSE]
    
    ## 3. Uses descriptive activity names to name the activities in the data set
    #colnames(Y) <- "activity"
    #Y <- mutate(Y, activityLabel=factor(Y$activity, labels = activity_labels$V2))
    message("Uses descriptive activity names to name the activities in the data set...")
    activityLabel=factor(Y$V1, labels = activity_labels$V2)

    ## 4. Appropriately labels the data set with descriptive variable names.
    message("Appropriately labels the data set...")
    colnames(X) <- selected_features$V2
    
    ## 5. From the data set in step 4, creates a second, independent tidy data set 
    ##    with the average of each variable for each activity and each subject.
    message("Createing an independent tidy data set with the average of each variable for each activity and each subject...")
    colnames(Subject) <- "subject"
    final_data <- tbl_df(cbind(Subject, activityLabel, X))
    tidydata <- final_data %>% group_by(activityLabel, subject) %>% summarise_all(mean)

    message("Saving tidy data set to a file...")
    write.table(tidydata, file = "tidydata.txt", row.names = FALSE, col.names = TRUE)
    
    message("Process Completed.")
    
}