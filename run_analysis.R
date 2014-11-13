####Data file location "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "   ####
#### DOWNLOAD DATA FILES AND SAVE THEM TO YOUR WORKING DIRECTORY  ####
#### IMPORT DATA FILES INTO R ####
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")
X_test <- read.table("X_test.txt")   
y_test <- read.table("y_test.txt")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

####  ASSIGN COLUMN NAMES TO IMPORTED DATA FILES  ####

colnames(X_test)=features[,2]
colnames(X_train)=features[,2]
colnames(subject_test)="Particpant_number"
colnames(subject_train)="Particpant_number"
colnames(y_test)="activity_number"
colnames(y_train)="activity_number"

####  JOIN DATA TABLES TOGETHER ####

test_data <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train, y_train, X_train)

all_data <- rbind(test_data, train_data)

#### ASSIGN ACTIVITY NAMES TO ACTIVITY NUMBERS   ####

all_data$activity_number <- factor(all_data$activity_number, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")) ##  idea for this line credit to Scot K. Waye, PhD

#### SELECT ONLY COLUMNS WITH MEAN, STD, PARTICIPANT NUMBER & ACTIVITY NUMBER IN THEM  ####

all_data_mean_std <- all_data[,grepl("mean|std|Particpant_number|activity_number", names(all_data))]

#### CREATE AN INDEPENDENT TIDY DATA SET THAT CALCULATE MEAN OF COLUMNS SUBSETTED BY PARTICIPANT & ACTIVITY ####
library(plyr)

independent_tidy_data <- ddply(all_data_mean_std, c("Particpant_number", "activity_number"), numcolwise(mean))

#### DOWNLOAD THE INDEPENDENT TIDY DATA SET AS TEXT FILE TO YOUR WORKING DIRECTORY  ####

write.table(independent_tidy_data, file="independent_tidy_data.txt") 
