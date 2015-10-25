##Project Description 
The original project was conducted by Smartlab at the Non Linear Complex Systems Laboratory to measure Human Activity Recognition Using Smartphones Dataset.
The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years, and each performed six activities wearing a smartphone on the waist.
Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

In this project, the script run_analysis.R uses the data from the original project to select only the mean and standard deviations of every measurement of a 561-feature vector with time and frequency domain variables, to later obtain the average of every measure per activity for every subject. 

## List of the variables in the average.txt file 
The nomeclature of the measurments variables is: t or f= time or frequency, Body or Gravity = body or gravity acceleration signals, Acc or Gyro= Accelerometer or Gyroscope, Jerk or Mag= jerk or magnitude signals, mean() or std()= mean or standar deviation, X,Y,Z= 3-axial raw signals. 
The mean was obtained per activity for every subject, for every variable. 
Dimensions of dataframe: 180 rows, 67 columns. 

###Variables

$`Subject`
[1] "integer"

1 to 30 subjects. 

$`Activity`
[1] "factor"

6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

$`Mean_tBodyAcc-mean()-X`
[1] "numeric"

$`Mean_tBodyAcc-mean()-Y`
[1] "numeric"

$`Mean_tBodyAcc-mean()-Z`
[1] "numeric"

$`Mean_tBodyAcc-std()-X`
[1] "numeric"

$`Mean_tBodyAcc-std()-Y`
[1] "numeric"

$`Mean_tBodyAcc-std()-Z`
[1] "numeric"

$`Mean_tGravityAcc-mean()-X`
[1] "numeric"

$`Mean_tGravityAcc-mean()-Y`
[1] "numeric"

$`Mean_tGravityAcc-mean()-Z`
[1] "numeric"

$`Mean_tGravityAcc-std()-X`
[1] "numeric"

$`Mean_tGravityAcc-std()-Y`
[1] "numeric"

$`Mean_tGravityAcc-std()-Z`
[1] "numeric"

$`Mean_tBodyAccJerk-mean()-X`
[1] "numeric"

$`Mean_tBodyAccJerk-mean()-Y`
[1] "numeric"

$`Mean_tBodyAccJerk-mean()-Z`
[1] "numeric"

$`Mean_tBodyAccJerk-std()-X`
[1] "numeric"

$`Mean_tBodyAccJerk-std()-Y`
[1] "numeric"

$`Mean_tBodyAccJerk-std()-Z`
[1] "numeric"

$`Mean_tBodyGyro-mean()-X`
[1] "numeric"

$`Mean_tBodyGyro-mean()-Y`
[1] "numeric"

$`Mean_tBodyGyro-mean()-Z`
[1] "numeric"

$`Mean_tBodyGyro-std()-X`
[1] "numeric"

$`Mean_tBodyGyro-std()-Y`
[1] "numeric"

$`Mean_tBodyGyro-std()-Z`
[1] "numeric"

$`Mean_tBodyGyroJerk-mean()-X`
[1] "numeric"

$`Mean_tBodyGyroJerk-mean()-Y`
[1] "numeric"

$`Mean_tBodyGyroJerk-mean()-Z`
[1] "numeric"

$`Mean_tBodyGyroJerk-std()-X`
[1] "numeric"

$`Mean_tBodyGyroJerk-std()-Y`
[1] "numeric"

$`Mean_tBodyGyroJerk-std()-Z`
[1] "numeric"

$`Mean_tBodyAccMag-mean()`
[1] "numeric"

$`Mean_tBodyAccMag-std()`
[1] "numeric"

$`Mean_tGravityAccMag-mean()`
[1] "numeric"

$`Mean_tGravityAccMag-std()`
[1] "numeric"

$`Mean_tBodyAccJerkMag-mean()`
[1] "numeric"

$`Mean_tBodyAccJerkMag-std()`
[1] "numeric"

$`Mean_tBodyGyroMag-mean()`
[1] "numeric"

$`Mean_tBodyGyroMag-std()`
[1] "numeric"

$`Mean_tBodyGyroJerkMag-mean()`
[1] "numeric"

$`Mean_tBodyGyroJerkMag-std()`
[1] "numeric"

$`Mean_fBodyAcc-mean()-X`
[1] "numeric"

$`Mean_fBodyAcc-mean()-Y`
[1] "numeric"

$`Mean_fBodyAcc-mean()-Z`
[1] "numeric"

$`Mean_fBodyAcc-std()-X`
[1] "numeric"

$`Mean_fBodyAcc-std()-Y`
[1] "numeric"

$`Mean_fBodyAcc-std()-Z`
[1] "numeric"

$`Mean_fBodyAccJerk-mean()-X`
[1] "numeric"

$`Mean_fBodyAccJerk-mean()-Y`
[1] "numeric"

$`Mean_fBodyAccJerk-mean()-Z`
[1] "numeric"

$`Mean_fBodyAccJerk-std()-X`
[1] "numeric"

$`Mean_fBodyAccJerk-std()-Y`
[1] "numeric"

$`Mean_fBodyAccJerk-std()-Z`
[1] "numeric"

$`Mean_fBodyGyro-mean()-X`
[1] "numeric"

$`Mean_fBodyGyro-mean()-Y`
[1] "numeric"

$`Mean_fBodyGyro-mean()-Z`
[1] "numeric"

$`Mean_fBodyGyro-std()-X`
[1] "numeric"

$`Mean_fBodyGyro-std()-Y`
[1] "numeric"

$`Mean_fBodyGyro-std()-Z`
[1] "numeric"

$`Mean_fBodyAccMag-mean()`
[1] "numeric"

$`Mean_fBodyAccMag-std()`
[1] "numeric"

$`Mean_fBodyBodyAccJerkMag-mean()`
[1] "numeric"

$`Mean_fBodyBodyAccJerkMag-std()`
[1] "numeric"

$`Mean_fBodyBodyGyroMag-mean()`
[1] "numeric"

$`Mean_fBodyBodyGyroMag-std()`
[1] "numeric"

$`Mean_fBodyBodyGyroJerkMag-mean()`
[1] "numeric"
