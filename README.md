# Getting and Cleaning Data Course Project

This is the README file for the Course Project of the Course:
GETTING AND CLEANING DATA

The R_script run_analysis.R performs the following:
1. Merges the training and the test sets to create one data set. 
	fin_X contains the 'X's merged from X_test.txt and X_train.txt files
	fin_y contains the 'y's merged from y_test.txt and y_train.txt files
	fin_subject contains the subject IDs merged from subject_test.txt and subject_train.txt files

2. Extracts only the measurements on the mean and standard deviation for each measurement.
	findMeanStd contains the subsetted data containing only required features.

3. Uses descriptive activity names to name the activities in the data set
	The codes (1,2,3,4,5,6) have been replaced by the activity they represent

4. Appropriately labels the data set with descriptive variable names.
	Features beginning with 't' have been expanded by replacing 't' with 'Time'
	Likewise, 'f' has been changed to 'Frequency'
	
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
	The new dataset is stored as 'new_fin'
	
Created 2 functions:
	1) expandName:	fill in full forms as described in 2nd task
	2) newGen:	to return each row of the new dataset required in task 5 by subsetting based on subject and activity and
		   	then calculating mean.
