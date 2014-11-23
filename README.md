Tidy UCI HAR Dataset README File
================================

Purpose
-------

This readme file describes the steps (implemented in run_analysis.R) to create the Tidy UCI HAR dataset from the information and data supplied in the file: getdata-projectfiles-UCI HAR Dataset.zip.


Required Files
--------------

The following files are required to run run_analysis.R to create/re-create the Tidy Wide version of the UCI dataset.

* Files extracted from the getdata-projectfiles-UCI HAR Dataset.zip file into a directory structure with the top level directory of UCI HAR Dataset:

		./train/X_train.txt - Contains the training portion of the dataset
		./train/subject_train.txt - Contains the data for the Subject column of the training portion of the dataset
		./train/y_train.txt - Contains the data for the Activity column for train the data set coded as integers
		./test/X_test.txt - Contains the test portion of the dataset
		.test/subject_test.txt - Contains the data for the Subject row of the test portion of the dataset
		./test/y_test.txt - Contains the data for the Activity column of the test data set coded as integers
		./features.txt - Contains the column labels for the observed data both the test and train portions of the dataset
		./activity_labes.txt - Contains information to translate the interger coded activity data to a human readanble form
		./run_analysis.R - Contains the R procedure for creating the final Tidy Wide version of the dataset from the component files
		
* Files created for running the run_analysis.R script

		./selected_features.txt - Contains information to select the subset of columns from the complete merged (train and test) datasets
		./tidy_selected_features.txt - Contains the column names in their final format for the final tidy data set
		
* Output files produced by run_analysis.R script

		./tidy_UCI_HAR.txt - Pure text version of the output used for the project submission
		./tidy_UCE_HAR.csv - CSV file format output of the final tidy dataset which can be easily imported back into R for analysis
		./tidy_UCI_HAR.xlsx - Excel workbook version of the final tiday dataset supplied for easy human analysis of the data
		


Execution Steps to Create/Re-Create the Tidy UCI HAR dataset
------------------------------------------------------------

All of the files indicated above should be placed in the indicated locations in the top level directory.  The top level directory should be the one created by unzipping the getdata-projectfiles-UCI HAR Dataset.zip and should be set as the working diretory in R before running the run_analysis.R procedure.

The output .txt and .csv files will then be produced by running the run_analysis.R script either from within the R console or from within R Studio.
_
Implementation Details
-----------------------

* The specific steps executed by the run_analysis.R script follow:

		- Read in the dplyr library
		- Read in the X_test dataset from X_test.txt
		- Read in the X_train dataset from X_train.txt
		- Read in the column names for the two data sets from features.txt
		- Read in the test data Subject column data from subject_test.txt
		- Read in the train data Subject column data from subject_train.txt
		- Read in the test data Activity column data from y_test.txt
		- Read in the train data Activity column data from y_train.txt
		- Read in the information to translate the interger encoded Activity data to human readable form from ativity_labels.txt
		- Translate the interger encoded data in the Activity data to human readable form
		- Add the column names for the observed data columns in test and train data sets
		- Add the corresponding Subject numbers as a column to both the test and train data sets
		- Add the corresponding, translated Activity lables as a column to both the test and train data sets
		- Combine the test and train data sets into a single dataset using row binding
		- Read in information about the columns to keep in the final tidy dataset
		- Use the set of coluns to keep to eliminate unwanted columns of data in the combined data set
		- Use the set of column names to appropriately named the columns in the combined data set
		- The new combined and subsetted dataset is called X_final
		- Using a set of three nested loops, process the data in X_final to calculate the average (mean) values for
			- Each of the 30 subjects for
			- Each of the six activities (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
			- The resulting dataset is the Tidy Wide dataset
		- Read in the tidy dataset column names from tidy_selected_features.txt and apply them to the Tidh Wide dataset
		- Write the final Tidy Wide dataset to files in both text and CSV formats
		- Read the CSV format output file into Excel and adjust column widths to make the dataset more easily human readable
		

For further details of the implementation of the above steps, please inspect the run_analysis.R file.
_

_






