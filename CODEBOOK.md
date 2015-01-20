# GetCleanDataProject
Getting and Cleaning Data Course Project

# Data description 

### Filename: tidy_data_set.txt

This data has been generated based on the data at:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Information about data:
* The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation

See more details about the variables (especially for the averaged values):
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### File content 

General description
* file contains header
* file contains one observation per row (each uniquely identified by "Activity" and "Subject" identifiers)

columns in file:
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

Acknowledgement:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

