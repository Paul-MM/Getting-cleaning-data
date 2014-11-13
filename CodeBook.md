
COURSERA PROJECT GETTING AND CLEANING DATA


DESCRIPTION

Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

SOURCE DATA

A full description of the data used in this project can be found at The UCI Machine Learning Repository
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

DATA SET INFORMATION

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


For each record in the dataset it is provided:
	•	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
	•	Triaxial Angular velocity from the gyroscope.
	•	A 561-feature vector with time and frequency domain variables.
	•	Its activity label.
	•	An identifier of the subject who carried out the experiment.

STEPS TO BE FOLLOWED TO CREATE TIDY DATA SET

DOWNLOAD DATA FILES AND SAVE THEM TO YOUR WORKING DIRECTORY 

The data can be accessed from the website below.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The following files should be saved to your working directory:

subject_train.txt
subject_test.txt
x_test.txt
y_test.txt 
x_train.txt
y_train.txt
features.txt
activity_labels.txt

IMPORT DATA FILES INTO R

Using the read.table function in R import the files from your working directory.

ASSIGN COLUMN NAMES TO IMPORTED DATA FILES 


Assign the columns names using the colnames function. 

JOIN DATA TABLES TOGETHER

Join the data files into one data file using cbind and rbind functions.

ASSIGN ACTIVITY NAMES TO ACTIVITY NUMBERS

Use the factor function to assign activity names to activity numbers. 

SELECT ONLY COLUMNS WITH MEAN, STD, PARTICIPANT NUMBER & ACTIVITY NUMBER IN THEM

Use the grepl function to create a subset of data that contains only information on Participants, activity number and standard deviation and the mean.

CREATE AN INDEPENDENT TIDY DATA SET THAT CALCULATE MEAN OF COLUMNS SUBSETTED BY PARTICIPANT & ACTIVITY

Using the library function open ‘plyr’.  Using the ddply function available in plyr create a new tidy data set that provides the mean of each column subset by participant and activity name.

DOWNLOAD THE INDEPENDENT TIDY DATA SET AS TEXT FILE TO YOUR WORKING DIRECTORY

As required by the project use the write.table function and download a tidy data set into your working directory to be uploaded into GitHub.
