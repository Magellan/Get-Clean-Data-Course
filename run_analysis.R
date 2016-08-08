# ================================================================= 
# Coursera                                                        =
# John Hopkins Getting and Cleaning Data Course                   =
# Week 4 Class                                                    =
# Coiurse Project                                                 =
# Week of August 07, 2016                                         =
# Filename:  run_analysis.R                                       =
# =================================================================


   ## -----------------------------------------------------------------------
   ## Set working directory
   ## -----------------------------------------------------------------------
   setwd("G:/My Documents/Jobs/Coursera/Data-Scientist/Get-Clean-Data/Project")


   ## -----------------------------------------------------------------------
   ## Get UCI HAR DAtaset Zip file and unzip
   ## -----------------------------------------------------------------------
   fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
   download.file(url = fileUrl, destfile = "UCIHARDataset.zip")
   unzip("UCIHARDataset.zip")


   ## -----------------------------------------------------------------------
   ## 1. Load "train" and "test observation data
   ## 2. Load variables for Activities and Features
   ## -----------------------------------------------------------------------

   #  features, activity and subject of test data
   x_test        <- read.table('./UCI HAR Dataset/test/x_test.txt');
   y_test        <- read.table('./UCI HAR Dataset/test/y_test.txt'); 
   subject_test  <- read.table('./UCI HAR Dataset/test/subject_test.txt'); 

   #  features, activity and subject of train data
   x_train       <- read.table('./UCI HAR Dataset/train/x_train.txt'); 
   y_train       <- read.table('./UCI HAR Dataset/train/y_train.txt'); 
   subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt');


   #  activities and features data
   activity_lbls  <- read.table("./UCI HAR Dataset/activity_labels.txt")
   features      <- read.table("./UCI HAR Dataset/features.txt")


   ## -----------------------------------------------------------------------
   ## 1. Merge each features, activity, and subject data - from test and train obs
   ## 2. set column names 
   ## 3. extract only the mean and std dev from the features before mergting data - COURSE REQ 2
   ## 4. merged all data - COURSE REQ 1
   ## -----------------------------------------------------------------------
 
   # Merge each data by characteristics of (features, activity, subject)
   # do this way first to easily name columns before merging all data
   allFeatures <- rbind(x_test, x_train)
   allActivity <- rbind(y_test, y_train)
   allSubject  <- rbind(subject_test, subject_train)

   # set columns names
   names(allFeatures) <- features$V2
   names(allActivity) <- c("activity")
   names(allSubject)  <- c("subject")

   # Extract only mean and standard deviation columns for each measurement
   featuresMeanStdD <- grep("mean\\(\\)|std\\(\\)", features$V2)
   allFeatures = allFeatures[,featuresMeanStdD]; 

   # merge all data with Subject, Activity, and Mean & Std Columns
   # put Subject and Activity first, and use them as the ID variables in "melt" later.
   allData     <- cbind(allSubject, allActivity, allFeatures)



   ## -----------------------------------------------------------------------
   ## Uses descriptive activity names to name the activities in the data set - COURSE REQ 3
   ## -----------------------------------------------------------------------
   allData$activity <- factor(allData$activity, levels = activity_lbls$V1, labels = activity_lbls$V2)

   # check "activity" names (uncomment next line for debuggig only)
   # unique(allData$activity)


   ## -----------------------------------------------------------------------
   ## Appropriately labels the data set with descriptive variable names - COURSE REQ 4
   ## Note:  The "subject" and "activity" columns have been given descriptive names already.
   ##        Giving subject names to the "features" columns.
   ## -----------------------------------------------------------------------
   names(allData)<-gsub("^t", "time-", names(allData))
   names(allData)<-gsub("^f", "frequency-", names(allData))
   names(allData)<-gsub("Acc", "Accelerometer-", names(allData))
   names(allData)<-gsub("Gyro", "Gyroscope-", names(allData))
   names(allData)<-gsub("Mag", "Magnitude-", names(allData))
   names(allData)<-gsub("Body", "Body-", names(allData))
   names(allData)<-gsub("Gravity", "Gravity-", names(allData))
   names(allData)<-gsub("Jerk", "Jerk-", names(allData))

   # correct any double "--"
   names(allData)<-gsub("--", "-", names(allData))

   # Check names (uncomment next line for debuggig only)
   # names(allData)


   ## -----------------------------------------------------------------------
   ## Create a second, independent tidy data set with the average of each variable 
   ##    for each activity and each subject - COURSE REQ 5
   ## Note:  use melt and dcast functions with aggregation
   ## -----------------------------------------------------------------------
   allData.molt <- melt(allData, id = c("subject", "activity"), na.rm = TRUE)

   # Check melt data (uncomment next line for debuggig only)
   # allData.molt

   # 2nd independent tidy data of avg data per subject & acticity
   allDataSubjActMean <- dcast(allData.molt, subject + activity ~ variable, mean)

   # Check 2nd data before writing out (uncomment next line for debuggig only)
   # allDataSubjActMean



   ## -----------------------------------------------------------------------
   ## Submit the tidy data - COURSE Req 5 (see also Review Req 1)
   ## -----------------------------------------------------------------------
   write.table(allDataSubjActMean,file = "tidydata.txt", row.name=FALSE)





