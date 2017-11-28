## The function is to prepare tidy data that can be used for later analysis. 
run_analysis <- function() {
    
    library(dplyr)
    library(data.table)

    
    ## download/unzip the data for the project
    ## project files are stored on local "data" folder
    datadir <- "data"
    if (!file.exists(datadir)) {
        dir.create(datadir)
    }
    
    ## download project zip file if it doesn't exist
    destfile<- paste(datadir, "UCI-HAR-Dataset.zip", sep="/")
    if (!file.exists(destfile)) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile=destfile, mode="wb")
        ## unzip the project files
        unzip(destfile, exdir=datadir)
        list.files(datadir, recursive = TRUE)
    }
    list.files(datadir, recursive = TRUE)
    
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
    
    ## read train data, lebel and subject
    X_train <- fread("data/UCI HAR Dataset/train/X_train.txt")
    Y_train <- fread("data/UCI HAR Dataset/train/y_train.txt")
    subject_train <- fread("data/UCI HAR Dataset/train/subject_train.txt")
    
    ## read test data, lable and subject
    X_test <- fread("data/UCI HAR Dataset/test/X_test.txt")
    Y_test <- fread("data/UCI HAR Dataset/test/y_test.txt")
    subject_test <- fread("data/UCI HAR Dataset/test/subject_test.txt")
    
    ## read feature vector (561-features)
    feature_names <- fread("data/UCI HAR Dataset/features.txt")
    
    ## read activity lebels
    ## 6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
    activity_labels <- fread("data/UCI HAR Dataset/activity_labels.txt")
    
    ## 1. Merges the training and the test sets to create one data set
    X <- rbind(X_train, X_test)
    Y <- rbind(Y_train, Y_test)
    Subject <- rbind(subject_train, subject_test)
    
    ## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
    selected_features <- feature_names[grep("mean\\(\\)|std\\(\\)",feature_names$V2),]
    cols = paste("V", selected_features$V1, sep="")
    X <- X[,cols,with=FALSE]
    
    ## 3. Uses descriptive activity names to name the activities in the data set
    #colnames(Y) <- "activity"
    #Y <- mutate(Y, activityLabel=factor(Y$activity, labels = activity_labels$V2))
    activityLabel=factor(Y$V1, labels = activity_labels$V2)

    ## 4. Appropriately labels the data set with descriptive variable names.
    colnames(X) <- selected_features$V2
    
    ## 5. From the data set in step 4, creates a second, independent tidy data set 
    ##    with the average of each variable for each activity and each subject.
    colnames(Subject) <- "subject"
    final_data <- tbl_df(cbind(Subject, activityLabel, X))
    tidydata <- final_data %>% group_by(activityLabel, subject) %>% summarise_all(mean)

    write.table(tidydata, file = "tidydata.txt", row.names = FALSE, col.names = TRUE)
    write.table(selected_features, file = "tidyfeatures.txt", row.names = FALSE, col.names = FALSE)
}