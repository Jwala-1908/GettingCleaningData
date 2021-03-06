This is the tidy data of the xperiment: Human Activity Recognition Using Smartphones Dataset Version 1.0 [1] 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we
captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets,
where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and 
gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 
50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated 
using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency 
components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
variables from the time and frequency domain.

The tidy data is save in a file name "tidy_data.txt" and have this columns:

subject: subject id.
activity: name of the activity that the subject developed.
group: group of the subject (trainig/test).
tBodyAcc-mean()-X.
tBodyAcc-mean()-Y.
tBodyAcc-mean()-Z.
tBodyAcc-std()-X.
tBodyAcc-std()-Y.
tBodyAcc-std()-Z.
tGravityAcc-mean()-X.
tGravityAcc-mean()-Y.
tGravityAcc-mean()-Z.
tGravityAcc-std()-X.
tGravityAcc-std()-Y.
tGravityAcc-std()-Z.
tBodyAccJerk-mean()-X.
tBodyAccJerk-mean()-Y.
tBodyAccJerk-mean()-Z.
tBodyAccJerk-std()-X.
tBodyAccJerk-std()-Y.
tBodyAccJerk-std()-Z.
tBodyGyro-mean()-X.
tBodyGyro-mean()-Y.
tBodyGyro-mean()-Z.
tBodyGyro-std()-X.
tBodyGyro-std()-Y.
tBodyGyro-std()-Z.
tBodyGyroJerk-mean()-X.
tBodyGyroJerk-mean()-Y.
tBodyGyroJerk-mean()-Z.
tBodyGyroJerk-std()-X.
tBodyGyroJerk-std()-Y.
tBodyGyroJerk-std()-Z.
tBodyAccMag-mean().
tBodyAccMag-std().
tGravityAccMag-mean().
tGravityAccMag-std().
tBodyAccJerkMag-mean().
tBodyAccJerkMag-std().
tBodyGyroMag-mean().
tBodyGyroMag-std().
tBodyGyroJerkMag-mean().
tBodyGyroJerkMag-std().
fBodyAcc-mean()-X.
fBodyAcc-mean()-Y.
fBodyAcc-mean()-Z.
fBodyAcc-std()-X.
fBodyAcc-std()-Y.
fBodyAcc-std()-Z.
fBodyAcc-meanFreq()-X.
fBodyAcc-meanFreq()-Y.
fBodyAcc-meanFreq()-Z.
fBodyAccJerk-mean()-X.
fBodyAccJerk-mean()-Y.
fBodyAccJerk-mean()-Z.
fBodyAccJerk-std()-X.
fBodyAccJerk-std()-Y.
fBodyAccJerk-std()-Z.
fBodyAccJerk-meanFreq()-X.
fBodyAccJerk-meanFreq()-Y.
fBodyAccJerk-meanFreq()-Z.
fBodyGyro-mean()-X.
fBodyGyro-mean()-Y.
fBodyGyro-mean()-Z.
fBodyGyro-std()-X.
fBodyGyro-std()-Y.
fBodyGyro-std()-Z.
fBodyGyro-meanFreq()-X.
fBodyGyro-meanFreq()-Y.
fBodyGyro-meanFreq()-Z.
fBodyAccMag-mean().
fBodyAccMag-std().
fBodyAccMag-meanFreq().
fBodyBodyAccJerkMag-mean().
fBodyBodyAccJerkMag-std().
fBodyBodyAccJerkMag-meanFreq().
fBodyBodyGyroMag-mean().
fBodyBodyGyroMag-std().
fBodyBodyGyroMag-meanFreq().
fBodyBodyGyroJerkMag-mean().
fBodyBodyGyroJerkMag-std().
fBodyBodyGyroJerkMag-meanFreq().

The prefix f to denote frequency domain signal and prefix t to denote time. mean to denote the mean of the variable, 
std to denote the standard deviation of the variable and menFreq to denote Weighted average of the frequency components 
to obtain a mean frequency. Finally, X, Y and Z to denote the direction of the measure.

References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones
using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012 This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed 
to the authors or their institutions for its use or misuse. Any commercial use is prohibited. Jorge L. Reyes-Ortiz, Alessandro Ghio, 
Luca Oneto, Davide Anguita. November 2012.
https://coursera-assessments.s3.amazonaws.com/assessments/1593540158483/4702dfaf-dd75-42bf-8bb8-0ab4e25fab14/Week4tidydataset.txt