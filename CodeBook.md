# TABLES / VARIABLES
* features - variables: "Feature.Col","Feature.Measurement"
* activities - variables: "Activity.Code","Activity.Label"
* y_x - consolidated from the train and test data to have a dataset of(subject | Activity.Code | Activity.Label | x data)
* relevant_data - a subset of y_x which satisfies step 2 in the description, takes only the mean and std data from the Samsung DataSet. A descriptive variable. Activity.Label is added to describe each observation (row), and which subject created the observation
* relevant_data_ave - output of step 5 which averages each variable per activity and subject.

Note: Details on the data set are contained in the README.txt, activity_labels.txt, features.txt, and features_info.txt 

# FILES

* test folder - taken from the Samsung repository
* train folder - taken from the Samsung repository 
* activity_labels.txt - taken from the Samsung repository
* features.txt - taken from the Samsung repository
* features_info.txt - taken from the Samsung repository
* README.txt - taken from the Samsung repository. Describes all of the files for the data in the Samsung Galaxy S smartphone repository.
* README.md - Readme for the submission for the Week 4 Peer Graded Assignment
* CodeBook.md - Describes the tables and variables in R, and the files for the project
* run_analysis.R - script which modifies the Samsung Galaxy S data to clean and process the data.
* Week4PeerGradedAssignOutput.txt - the data table of the average of the mean and std variables per subject per activity cleaned and analyzed from the Samsung Galaxy Repository.

