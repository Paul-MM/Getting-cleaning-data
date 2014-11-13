Getting-cleaning-data
=====================

Getting and Cleaning Data Project

Repository for the submission of the course project for the Johns Hopkins Coursera course Getting and Cleaning Data.

Overview

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

This project requires student to source and download data for the Human Activity Recognition Using Smartphones Project.   Thereafter, take time to understand and tidy the data before joining the data together into one dataset.  The complete data set is analysed to pull-out data on the mean & standard deviation before performing calculating the mean of the mean and standard deviations for each activity performed by each of the participants.  

A full description of the data used in this project can be found at 

The UCI Machine Learning Repository: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The source data for this project can be found here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Using This Script

The script assumes that you have accessed the link with the data and downloaded the relevant files into your working directory.

The relevant files are:
	-	subject_test.txt
	-	subject_train.txt
	-	X_test.txt
	-	read.table
	-	X_train.txt
	-	y_train.txt
	-	features.txt
	-	activity_labels.txt

Project Summary

The project creates one R script called run_analysis.R that does the following. 
	1	Merges the training and the test sets to create one data set.
	2	Extracts only the measurements on the mean and standard deviation for each measurement. 
	3	Uses descriptive activity names to name the activities in the data set
	4	Appropriately labels the data set with descriptive variable names. 
	5	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.




Additional Information

Additional information about the variables, data and transformations are available in the CodeBook.MD file.
