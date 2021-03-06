# DESCRIPTION
This repo contains the submission for the programming assignment for Week 4 of Getting and Cleaning Data in Coursera. The program adds to the files and dataset of Samsung Galaxy S smartphone at:

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Instructions are to create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# PROCESS / VARIABLES
run_analysis.R does the following:

1. Reads features.txt and activities.txt into R and modifies the names of the variables to be descriptive.
2. Reads the subject.txt, x.txt, and y.txt from the train and test data and consolidates them into one variable y_x
3. Takes a subset of y_x and stores it into relevant_data for step 2.
4. Makes a separate data frame relevant_data_ave which takes the average of the data per subject and activity.
5. Outputs relevant_data_ave into a file Week4PeerGradedAssignOutput.txt

