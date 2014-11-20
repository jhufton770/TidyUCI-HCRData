# Tidy UCI HAR Dataset
# This script assembles a complete UCI HAR dataset from the component files supplied in the zip file: getdata-projectfiles-UCI HAR Dataset.zip
# This dataset is the concatenation of the Test and Train datasets supplied in the zip file.  
# Each row contains:
#   - all 561 data vectors computed from an observation
#   - the integer (1:30) identifying the subject ssociated with the observation
#   - a descritpion of the activity the subject was involved in when the observation was taken.

#Read in the dplyr library

library(dplyr)

# Read in the X_test and X_train data into data frames
X_test <- read.table("./test/X_test.txt")

X_train <- read.table("./train/X_train.txt")

# Read in the column names from features.txt
features <- read.table("./features.txt")

# Read in the test and train subject vectors from 
# subject_test.txt
subjects_test <- read.table("./test/subject_test.txt")

# subject_train.txt
subjects_train <- read.table("./train/subject_train.txt")

# Read in the activity labels
activity_labels_test <- read.table("./test/y_test.txt")
activity_labels_train <- read.table("./train/y_train.txt")

#Translate the numeric activity labels to their character equivalents 
activities <- read.table("./activity_labels.txt")
activities <- activities[,2]
activity_labels_test <- mutate(activity_labels_test, V1 = as.character(activities[V1]))
activity_labels_train <- mutate(activity_labels_train, V1 = as.character(activities[V1]))

# Add the column names in features.txt to both test and train data frames
names(X_test) <- features[ ,2]
names(X_train) <- features[ ,2]

# Add the corresponding subject numbers as new column in both test and train data frames
X_test["Subject"] <- subjects_test[ ,1]
X_train["Subject"] <- subjects_train[ ,1]

# Add the corresponding activity numbers as a new column in both test and train data frames
X_test["Activity"] <- activity_labels_test[ ,1]
X_train["Activity"] <- activity_labels_train[ ,1]

# Combine the test and train data frames into a single data frame
X_all <- rbind(X_test, X_train)

# Retain only those measurements that pertain to the mean or standard deviation of the measures in the data set
# At the operating system, run the following commands to create a list of those columns from the original
# 561 measurement vectors supplied that contain the mean or standard deviation figures.  Use the resulting list of
# the relevant columns to subset the final data set to include only the desired measurements.
#
# grep -i -e mean -e std features.txt > selected_features.txt
#
# Next, remove the following entries from the end of the selected_features.txt file:
# 555 angle(tBodyAccMean,gravity)
# 556 angle(tBodyAccJerkMean),gravityMean)
# 557 angle(tBodyGyroMean,gravityMean)
# 558 angle(tBodyGyroJerkMean,gravityMean)
# 559 angle(X,gravityMean)
# 560 angle(Y,gravityMean)
# 561 angle(Z,gravityMean)
#
# Use the selected_features.txt file to extract the relevant columns from the X_all data set
# to be kept in the final data 

selected_features <- read.table("./selected_features.txt")
keep_columns <- selected_features[ ,1]
X_selected <- X_all[, keep_columns]
names(X_selected) <-selected_features[ ,2]

# Move the subject column to be column #1 in both test and train data frames
#These two columns represent the dimension variables that are fixed by the design of the data collection
X_final <- data.frame('Subject' = X_selected[ ,80], 'Activity' = X_selected[ , 81], X_selected[ , 1:79])

# Create the desired Tidy Data Set:
# independent tidy data set with the average of each variable observed for each activity for each subject.

# Create a vector with the six activities tracked for each of the 30 subjects observed
activities <- c("LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS")

# Initialize an empty data frame to hold the results of summarizing the data
tidy_final <- data.frame()

# A set of three nested for loops are used to summarize (using the mean() function) the observational data for each of the
# 30 subjects in the study, for each of the six activities over each of the 79 variables collected per observation
# for each combination of 30 subjects and 6 activities
#
# In the innermost loop, the mean() is calculated for each of the relevant 79 variables collected.
# The cbind() function is used to create a vector of the averages (mean()) for each activity observed for each subject in the 
#study.

for (subject in 1:30) {
    for (activity in activities) {
        c <- vector()
        for (col in 3:81) {
            c <- cbind( c, mean(X_final[(X_final$Subject == subject & X_final$Activity == activity), col]))
        }
        tidy_final <- rbind( tidy_final, 
                             data.frame(Subject = subject, 
                                        Activity = activity
                                        , c )
        )
    }
}

# Appropriate descriptive column names are added to the resuling data frame
tidy_selected_features <- read.table("./tidy_selected_features.txt")
names(tidy_final) <- tidy_selected_features[ ,2]

# The tidy data set resulting from the above steps contains 180 observations (30 subjects * 6 activities) of the
# 79 observed (dependent) variables plus the two independent variables (Subject and Activity) for a total of 81 columns.

# The tidy data set in the tidy_final dataframe is written to a CSV format file for use in further
# analysis.  The resulting CSV file can be imported into Excel for further inspection.

write.table(tidy_final, "./tidy_UCI_HAR.csv", quote=TRUE, sep=',', eol="\r\n", row.names=FALSE, col.names=TRUE)
write.table(tidy_final, "./tidy_UCI_HAR.txt", quote=TRUE, sep=',', eol="\r\n", row.names=FALSE, col.names=TRUE)
 