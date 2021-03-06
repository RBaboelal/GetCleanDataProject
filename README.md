# GetCleanDataProject
Getting and Cleaning Data Course Project

## Script used
run_analysis.R

### Summary of script functionality
This script runs on activity recognition datasets. The data has been caputured from the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets (test and train), where 70% of the volunteers was selected for generating the training data and 30% the test data.

The script will do the following (in order):
* Loading libraries
* Reading proper names and labels (activity, variables) and processing
* Reading test and train files
* Combine test and train data into one data set
* Select only mean() and std() columns (see below for more detail)
* Calculate average of each variable for each activity and each subject
* Rename into correct labels (for usability)
* Write data set to file tidy_data_set.txt

### Usage of script

* Script and input files must be in working directory

The following input files are needed:
* features.txt (for variable names)
* activity_lables.txt (for activity labels)
* X_test.txt (test data)
* y_test.txt (test activity indicator)
* subject_test.txt (test subject id)
* X_train.txt (train data)
* y_train.txt (train activity indicator)
* subject_train.txt (train subject id)

### Result description

General
* file contains header
* file contains one observation per row (each uniquely identified by "Activity" and "Subject" identifiers)

See more details about the variables:
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Download data at:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

columns in result file:
* "Activity" : enumerated (LAYING,STANDING,SITTING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS,WALKING)
* "Subject"  : integer (1 to 30 identifying the 30 subjects)
* "tBodyAcc-mean()-X" : float (averaged and grouped by activity and subject)
* "tBodyAcc-mean()-Y" : float (averaged and grouped by activity and subject)
* "tBodyAcc-mean()-Z" : float (averaged and grouped by activity and subject)
* "tBodyAcc-std()-X" : float (averaged and grouped by activity and subject)
* "tBodyAcc-std()-Y" : float (averaged and grouped by activity and subject)
* "tBodyAcc-std()-Z" : float (averaged and grouped by activity and subject)
* "tGravityAcc-mean()-X" : float (averaged and grouped by activity and subject)
* "tGravityAcc-mean()-Y" : float (averaged and grouped by activity and subject)
* "tGravityAcc-mean()-Z" : float (averaged and grouped by activity and subject)
* "tGravityAcc-std()-X" : float (averaged and grouped by activity and subject)
* "tGravityAcc-std()-Y" : float (averaged and grouped by activity and subject)
* "tGravityAcc-std()-Z" : float (averaged and grouped by activity and subject)
* "tBodyAccJerk-mean()-X" : float (averaged and grouped by activity and subject)
* "tBodyAccJerk-mean()-Y" : float (averaged and grouped by activity and subject)
* "tBodyAccJerk-mean()-Z" : float (averaged and grouped by activity and subject)
* "tBodyAccJerk-std()-X" : float (averaged and grouped by activity and subject)
* "tBodyAccJerk-std()-Y" : float (averaged and grouped by activity and subject)
* "tBodyAccJerk-std()-Z" : float (averaged and grouped by activity and subject)
* "tBodyGyro-mean()-X" : float (averaged and grouped by activity and subject)
* "tBodyGyro-mean()-Y" : float (averaged and grouped by activity and subject)
* "tBodyGyro-mean()-Z" : float (averaged and grouped by activity and subject)
* "tBodyGyro-std()-X" : float (averaged and grouped by activity and subject)
* "tBodyGyro-std()-Y" : float (averaged and grouped by activity and subject)
* "tBodyGyro-std()-Z" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerk-mean()-X" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerk-mean()-Y" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerk-mean()-Z" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerk-std()-X" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerk-std()-Y" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerk-std()-Z" : float (averaged and grouped by activity and subject)
* "tBodyAccMag-mean()" : float (averaged and grouped by activity and subject)
* "tBodyAccMag-std()" : float (averaged and grouped by activity and subject)
* "tGravityAccMag-mean()" : float (averaged and grouped by activity and subject)
* "tGravityAccMag-std()" : float (averaged and grouped by activity and subject)
* "tBodyAccJerkMag-mean()" : float (averaged and grouped by activity and subject)
* "tBodyAccJerkMag-std()" : float (averaged and grouped by activity and subject)
* "tBodyGyroMag-mean()" : float (averaged and grouped by activity and subject)
* "tBodyGyroMag-std()" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerkMag-mean()" : float (averaged and grouped by activity and subject)
* "tBodyGyroJerkMag-std()" : float (averaged and grouped by activity and subject)
* "fBodyAcc-mean()-X" : float (averaged and grouped by activity and subject)
* "fBodyAcc-mean()-Y" : float (averaged and grouped by activity and subject)
* "fBodyAcc-mean()-Z" : float (averaged and grouped by activity and subject)
* "fBodyAcc-std()-X" : float (averaged and grouped by activity and subject)
* "fBodyAcc-std()-Y" : float (averaged and grouped by activity and subject)
* "fBodyAcc-std()-Z" : float (averaged and grouped by activity and subject)
* "fBodyAccJerk-mean()-X" : float (averaged and grouped by activity and subject)
* "fBodyAccJerk-mean()-Y" : float (averaged and grouped by activity and subject)
* "fBodyAccJerk-mean()-Z" : float (averaged and grouped by activity and subject)
* "fBodyAccJerk-std()-X" : float (averaged and grouped by activity and subject)
* "fBodyAccJerk-std()-Y" : float (averaged and grouped by activity and subject)
* "fBodyAccJerk-std()-Z" : float (averaged and grouped by activity and subject)
* "fBodyGyro-mean()-X" : float (averaged and grouped by activity and subject)
* "fBodyGyro-mean()-Y" : float (averaged and grouped by activity and subject)
* "fBodyGyro-mean()-Z" : float (averaged and grouped by activity and subject)
* "fBodyGyro-std()-X" : float (averaged and grouped by activity and subject)
* "fBodyGyro-std()-Y" : float (averaged and grouped by activity and subject)
* "fBodyGyro-std()-Z" : float (averaged and grouped by activity and subject)
* "fBodyAccMag-mean()" : float (averaged and grouped by activity and subject)
* "fBodyAccMag-std()" : float (averaged and grouped by activity and subject)
* "fBodyBodyAccJerkMag-mean()" : float (averaged and grouped by activity and subject)
* "fBodyBodyAccJerkMag-std()" : float (averaged and grouped by activity and subject)
* "fBodyBodyGyroMag-mean()" : float (averaged and grouped by activity and subject)
* "fBodyBodyGyroMag-std()" : float (averaged and grouped by activity and subject)
* "fBodyBodyGyroJerkMag-mean()" : float (averaged and grouped by activity and subject)
* "fBodyBodyGyroJerkMag-std()" : float (averaged and grouped by activity and subject)

