# run_analysis.R - Coursera Week 4 Peer Graded Assignment 
# initializations
library(dplyr)
#Merges the training and the test sets to create one data set.
#Appropriately labels the data set with descriptive variable names.

# Read DATA
features <- read.delim2("features.txt", header = FALSE ,sep = "")
names(features) <- c("Feature.Col","Feature.Measurement")
activities <- read.delim2("activity_labels.txt", header = FALSE, sep = "")
names(activities) <- c("Activity.Code","Activity.Label")

# Read from Test Folder
setwd("test")
subj_t <- read.delim2("subject_test.txt", header = FALSE, sep = "")
names(subj_t) <- "subject"
x_t <- read.table("X_test.txt", header = FALSE, sep = "")
names(x_t) <- features$Feature.Measurement
y_t <- read.delim2("y_test.txt", header = FALSE, sep = "")
names(y_t) <- c("Activity.Code")
setwd("..")

# Read from Train Folder
setwd("train")
subj_n <- read.delim2("subject_train.txt", header = FALSE, sep = "")
names(subj_n) <- "subject"
x_n <- read.table("X_train.txt", header = FALSE, sep = "")
names(x_n) <- features$Feature.Measurement
y_n <- read.delim2("y_train.txt", header = FALSE, sep = "")
names(y_n) <- c("Activity.Code")
setwd("..")

# Combine in a single database
subj <- rbind(subj_t,subj_n)
x <- rbind(x_t,x_n)
y <- rbind(y_t,y_n)
y_x <- cbind(subj,y,x)
# Remove Test *_t and Train *_n Data
rm(list = grep("*_t",ls(), value = TRUE))
rm(list = grep("*_n",ls(), value = TRUE))
rm(y)
rm(x)

#Extracts only the measurements on the mean and standard deviation for each measurement
i <- grep("mean|std",features$Feature.Measurement)
i <- c(0,i)
relevant_data <- y_x[,i+1]

#Uses descriptive activity names to name the activities in the data set
relevant_data <- merge(relevant_data,activities)
relevant_data <- relevant_data[,-which(names(relevant_data) == "Activity.Code")]

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
relevant_data_ave <- relevant_data %>% group_by(subject,Activity.Label) %>% summarise_each (funs(mean))
write.table(relevant_data_ave,"Week4PeerGradedAssignOutput.txt", sep = "\t", row.name = FALSE)