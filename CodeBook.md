# PROCESS / VARIABLES
run_analysis.R does the following to perform the Description above:

1. Reads features.txt and activities.txt into R and modifies the names of the variables to be descriptive.

* features - "Feature.Col","Feature.Measurement"
* activities - "Activity.Code","Activity.Label"

2. Reads the subject.txt, x.txt, and y.txt from the train and test data and consolidates them into one variable y_x
* y_x - consolidated from the train and test data to have a dataset of(subject | Activity.Code | Activity.Label | x data)

3. Takes a subset of y_x and stores it into relevant_data for step 2.
* relevant_data - a subset of y_x which satisfies step 2 in the description, takes only the mean and std data from the Samsung DataSet. A descriptive variable. Activity.Label is added to describe each observation (row), and which subject created the observation

4. Makes a separate data frame relevant_data_ave which takes the average of the data per subject and activity.
* relevant_data_ave - the average measurements per subject and activity done.

5. Outputs relevant_data_ave into a file Week4PeerGradedAssignOutput.txt

Note: Details on the data set are contained in the README.txt, activity_labels.txt, features.txt, and features_info.txt 

# FILES

* test folder - taken from the Samsung repository
* train folder - taken from the Samsung repository 
* activity_labels.txt - taken from the Samsung repository
* features.txt - taken from the Samsung repository
* features_info.txt - taken from the Samsung repository
* README.txt - taken from the Samsung repository. Describes all of the files for the data in the Samsung Galaxy S smartphone repository.
* README.md - Readme for the submission for the Week 4 Peer Graded Assignment
* run_analysis.R - script which modifies the Samsung Galaxy S data to clean and process the data as per DESCRIPTION above.
* Week4PeerGradedAssignOutput.txt - Output of step 5, in the DESCRIPTION above.
