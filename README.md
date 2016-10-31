#DESCRIPTION
This repo contains the submission for the programming assignment for Week 4 of Getting and Cleaning Data in Coursera. The program adds to the files and dataset of Samsung Galaxy S smartphone at:
*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Instructions are to create one R script called run_analysis.R that does the following:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#FILES
*test folder - taken from the Samsung repository
*train folder - taken from the Samsung repository 
*activity_labels.txt - taken from the Samsung repository
*features.txt - taken from the Samsung repository
*features_info.txt - taken from the Samsung repository
*README.txt - taken from the Samsung repository. Describes all of the files for the data in the Samsung Galaxy S smartphone repository.
*README.md - Readme for the submission for the Week 4 Peer Graded Assignment
*run_analysis.R - script which modifies the Samsung Galaxy S data to clean and process the data as per DESCRIPTION above.
*Week4PeerGradedAssignOutput.txt - Output of step 5, in the DESCRIPTION above.
#PROCESS / VARIABLES
run_analysis.R does the following to perform the Description above:
1.Reads features.txt and activities.txt into R and modifies the names of the variables to be descriptive.
*features - "Feature.Col","Feature.Measurement"
*activities - "Activity.Code","Activity.Label"
2.Reads the subject.txt, x.txt, and y.txt from the train and test data and consolidates them into one variable y_x
*y_x - consolidated from the train and test data to have a dataset of(subject | Activity.Code | Activity.Label | x data)
3.Takes a subset of y_x and stores it into relevant_data for step 2.
*relevant_data - a subset of y_x which satisfies step 2 in the description, takes only the mean and std data from the Samsung DataSet. A descriptive variable. Activity.Label is added to describe each observation (row), and which subject created the observation
4.Makes a separate data frame relevant_data_ave which takes the average of the data per subject and activity.
*relevant_data_ave - the average measurements per subject and activity done.
5.Outputs relevant_data_ave into a file Week4PeerGradedAssignOutput.txt
#OUTPUT
*Week4PeerGradedAssignOutput.txt - the data table of the average of the mean and std variables per subject per activity cleaned and analyzed from the Samsung Galaxy Repository.
