Human Activity Recognition Using Samrtphones Dataset Codebook
===========

Purpose
-----------
This codebook describes the data fields present in the summarized Tidy UCI HAR dataset. This data set was created by joining both the 
test and training datasets supplied in the UCI HAR dataset zip file.  A subset of the observations was taken which represent the mean and standard deviation measurements present in that dataset.  These measurements were then averaged for each of six activities used to measure each of 30 subjects.

This dataset represents a Tidy-Wide version of the dataset.  

Ths information below shows a brief description for each column in resulting data set with its associated column number in the dataset.  This dataset has 180 observations of 81 variables (2 independent variables and 79 dependent (measurement) variables).

Nature of the Data
------------------
The data derives from a study of a subject's motion during six defined activities.  Observation data were taken from the embedded accelerometer and gyroscope of a cell phone worn by the subject on their waist while performing each of the six activities during the tests.  The data was taken in the three orthogonal vectors of euclidean space:

	*	X-axis
	*	Y-axis
	*	Z-axis

A series of low pass filters were used on the data to classify the measurements in one of three categories:

	*	Noise - higher frequency components of the data deemed to be noise (eliminated from the dataset)
	*	Acceleration - middle range frequency components of the data which are interpreted as body motion
	*	Gravity - low range frequency components of the data which are interpreted as the effects of gravity

Measurements from each set of observational variables are presented in the time-domain, as well as in the frequency-domain.  Frequency-domain information was obtained by applying a Fast Fourier Transform to a subset of the data.

Dataset Columns
---------------

Below are the columns of the dataset.  Shown are the column number, column name and a brief description of the data in the column.

*	1			Subject 

		The number (range 1:30) which identifies the subject for this observation
					
*	2			Activity

		Identifies the activity the subject was engaged in when this observation was made.  Activites measured are:
			- Laying
			- Sitting
			- Standing
			- Walking
			- Walking_Downstairs
			- Walking_Upstairs
					
*	3			timeBodyAccMeanX

		Average of the Mean of time-domain body acceleration: X-axis measurement
					
*	4			timeBodyAccMeanY

		Average of the Mean of time-domain body acceleration: Y-axis measurement
					
*	5			timeBodyAccMeanZ

		Average of the Mean of time-domain body acceleration: Z-axis measurement
		
*	6			timeBodyAccStdX

		Average of the Std. Dev. of time-domain body acceleration: X-axis measurement
		
*	7			timeBodyAccStdY

		Average of the Std. Dev. of time-domain body acceleration: Y-axis measurement
		
*	8			timeBodyAccStdZ

		Average of the Std. Dev. of time-domain body acceleration: Z-axis measurement
		
*	9			timeGravityAccMeanX

		Average of the Mean of time-domain gravity acceleration: X-axis measurement
		
*	10			timeGravityAccMeanY

		Average of the Mean of time-domain gravity acceleration: Y-axis measurement
		
*	11			timeGravityAccMeanZ

		Average of the Mean of time-domain gravity acceleration: Z-axis measurement
		
*	12			timeGravityAccStdX
	
		Average of the Std. Dev. of time-domain gravity acceleration: X-axis measurement
		
*	13			timeGravityAccStdY

		Average of the Std. Dev. of time-domain gravity acceleration: Y-axis measurement
		
*	14			timeGravityAccStdZ

		Average of the Std. Dev. of time-domain gravity acceleration: Z-axis measurement
		
*	15			timeBodyAccJerkMeanX

		Average of the Mean of the time-domain body jerk acceleration: X-axis measurement
*	16			timeBodyAccJerkMeanY

		Average of the Mean of the time-domain body jerk acceleration: Y-axis measurement
		
*	17			timeBodyAccJerkMeanZ

		Average of the Mean of the time-domain body jerk acceleration: Z-axis measurement
		
*	18			timeBodyAccJerkStdX

		Average of the Std. Dev. of the time-domain body jerk acceleration: X-axis measurement
		
*	19			timeBodyAccJerkStdY

		Average of the Std. Dev. of the time-domain body jerk acceleration: Y-axis measurement
		
*	20			timeBodyAccJerkStdZ
	
		Average of the Std. Dev. of the time domein body jerk acceleration: Z-axis measurement
		
*	21			timeBodyGyroMeanX

		Average of the Mean of the time-domain body gyroscope information: X-axis measurement
		
*	22			timeBodyGyroMeanY

		Average of the Mean of the time-domain body gyroscope information: Y-axis measurement
		
*	23			timeBodyGyroMeanZ

		Average of the Mean of the time-domain body gyroscope information: Z-axis measurement
		
*	24			timeBodyGyroStdX

		Average of the Std. Dev, of the time-domain body gyroscope information: X-axis measurement
		
*	25			timeBodyGyroStdY

		Average of the Std. Dev, of the time-domain body gyroscope information: Y-axis measurement
		
*	26			timeBodyGyroStdZ

		Average of the Std. Dev, of the time-domain body gyroscope information: Z-axis measurement
		
*	27			timeBodyGyroJerkMeanX

		Average of the Mean of the time-domain body jerk motion gyroscope information: X-axis measurement
		
*	28			timeBodyGyroJerkMeanY

		Average of the Mean of the time-domain body jerk motion gyroscope information: Y-axis measurement
		
*	29			timeBodyGyroJerkMeanZ

		Average of the Mean of the time-domain body jerk motion gyroscope information: Z-axis measurement
		
*	30			timeBodyGyroJerkStdX

		Average of the Std. Dev. of the time-domain body jerk motion gyroscope information: X-axis measurement
		
*	31			timeBodyGyroJerkStdY

		Average of the Std. Dev. of the time-domain body jerk motion gyroscope information: Y-axis measurement
		
*	32			timeBodyGyroJerkStdZ

		Average of the Std. Dev. of the time-domain body jerk motion gyroscope information: Z-axis measurement
		
*	33			timeBodyAccMagMean

		Average of the Mean of the time-domain 3-dimenaional magnitude body acceleration measurement
		
*	34			timeBodyAccMagStd

		Average of the Std. Dev. of the time-domain 3-dimenaional magnitude body acceleration measurement
		
*	35			timeGravityAccMagMean

		Average of the Mean of the time-domain 3-dimenaional magnitude gravity acceleration measurement
		
*	36			timeGravityAccMagStd

		Average of the Std. Dev. of the time-domain 3-dimenaional magnitude gravity acceleration measurement
		
*	37			timeBodyAccJerkMagMean

		Average of the Mean of the time-domain 3-dimenaional magnitude body jerk acceleration measurement
		
*	38			timeBodyAccJerkMagStd

		Average of the Std. Dev. of the time-domain 3-dimenaional magnitude body jerk acceleration measurement
		
*	39			timeBodyGyroMagMean

		Average of the Mean of the time-domain 3-dimenaional magnitude body gyroscope measurement
		
*	40			timeBodyGyroMagStd

		Average of the Std. Dev. of the time-domain 3-dimenaional magnitude body gyroscope measurement
		
*	41			timeBodyGyroJerkMagMean

		Average of the Mean of the time-domain 3-dimenaional magnitude body jerk gyroscope measurement
		
*	42			timeBodyGyroJerkMagStd

		Average of the Std. Dev. of the time-domain 3-dimenaional magnitude body jerk gyroscope measurement
		
*	43			freqBodyAccMeanX

		Average of the Mean of frequency-domain body acceleration: X-axis measurement
	
*	44			freqBodyAccMeanY

		Average of the Mean of frequency-domain body acceleration: Y-axis measurement
		
*	45			freqBodyAccMeanZ

		Average of the Mean of frequency-domain body acceleration: Z-axis measurement
		
*	46			freqBodyAccStdX

		Average of the Std. Dev of frequency-domain body acceleration: X-axis measurement
		
*	47			freqBodyAccStdY

		Average of the Std. Dev of frequency-domain body acceleration: Y-axis measurement
		
*	48			freqBodyAccStdZ

		Average of the Std. Dev of frequency-domain body acceleration: Z-axis measurement
		
*	49			freqBodyAccMeanFreqX

		Average of the Mean of frequency-domain body acceleration mean frequency: X-axis measurement
		
*	50			freqBodyAccMeanFreqY

		Average of the Mean of frequency-domain body acceleration mean frequency: Y-axis measurement
		
*	51			freqBodyAccMeanFreqZ

		Average of the Mean of frequency-domain body acceleration mean frequency: Z-axis measurement
		
*	52			freqBodyAccJerkMeanX

		Average of the Mean of frequency-domain body jerk acceleration: X-axis measurement
		
*	53			freqBodyAccJerkMeanY

		Average of the Mean of frequency-domain body jerk acceleration: Y-axis measurement
		
*	54			freqBodyAccJerkMeanZ

		Average of the Mean of frequency-domain body jerk acceleration: Z-axis measurement
		
*	55			freqBodyAccJerkStdX

		Average of the Std. Dev. of frequency-domain body jerk acceleration: X-axis measurement
		
*	56			freqBodyAccJerkStdY

		Average of the Mean of frequency-domain body jerk acceleration: Y-axis measurement
		
*	57			freqBodyAccJerkStdZ

		Average of the Mean of frequency-domain body jerk acceleration: Z-axis measurement
		
*	58			freqBodyAccJerkMeanFreqX

		Average of the Mean of frequency-domain body jerk acceleration mean frequency: X-axis measurement
		
*	59			freqBodyAccJerkMeanFreqY

		Average of the Mean of frequency-domain body jerk acceleration mean frequency: Y-axis measurement
		
*	60			freqBodyAccJerkMeanFreqZ

		Average of the Mean of frequency-domain body jerk acceleration mean frequency: Z-axis measurement
		
*	61			freqBodyGyroMeanX

		Average of the Mean of the frequency-domain body gyroscope information: X-axis measurement
		
*	62			freqBodyGyroMeanY

		Average of the Mean of the frequency-domain body gyroscope information: Y-axis measurement
		
*	63			freqBodyGyroMeanZ

		Average of the Mean of the frequency-domain body gyroscope information: Z-axis measurement
		
*	64			freqBodyGyroStdX

		Average of the Std. Dev. of the frequency-domain body gyroscope information: X-axis measurement
		
*	65			freqBodyGyroStdY

		Average of the Std. Dev. of the frequency-domain body gyroscope information: Y-axis measurement
		
*	66			freqBodyGyroStdZ

		Average of the Std. Dev. of the frequency-domain body gyroscope information: Z-axis measurement
		
*	67			freqBodyGyroMeanFreqX

		 Average of the Mean of the frequency-domain body gyroscope mean frequency information: X-axis measurement
		 
*	68			freqBodyGyroMeanFreqY

		Average of the Mean of the frequency-domain body gyroscope mean frequency information: Y-axis measurement
		
*	69			freqBodyGyroMeanFreqZ

		Average of the Mean of the frequency-domain body gyroscope mean frequency information: Z-axis measurement
		
*	70			freqBodyAccMagMean

		Average of the Mean of the frequency-domain magnitude of body acceleration measurement
		
*	71			freqBodyAccMagStd

		Average of the Std. Dev. of the frequency-domain magnitude of body acceleration measurement
		
*	72			freqBodyAccMagMeanFreq

		Average of the Mean of the frequency magnitude of the mean frequency of body accelereation measurement
		
*	73			freqBodyBodyAccJerkMagMean

		Average of the Mean of the frequency-domain magnitude of the mean frequency of body-body accelereation measurement
		
*	74			freqBodyBodyAccJerkMagStd

		Average of the Std. Dev. of the frequency-domain magnitude of body-body jerk accelereation measurement
		
*	75			freqBodyBodyAccJerkMagMeanFreq

		Average of the Mean of the frequency-domain magnitude of the mean frequency of body-body jerk acceleration measurement
		
*	76			freqBodyBodyGyroMagMean

		Average of the Mean of the frequency-domain magnitude of the gyroscopic body-body measurement
		
*	77			freqBodyBodyGyroMagStd

		Average of the Std. Dev. of the frequency-domain magnitude of the gyroscopic body-body measurement
	
*	78			freqBodyBodyGyroMagMeanFreq

		Average of the Mean of the frequency-domain magnitude of the mean frequency of the gyroscopic body-body measurement
		
*	79			freqBodyBodyGyroJerkMagMean

		Average of the Mean of the frequency-domain magnitude of the mean frequency of the gyroscopic body-body jerk measurement
		
*	80			freqBodyBodyGyroJerkMagStd

		Average of the Mean of the frequency-domain magnitude of the gyroscopic body-body jerk measurement
		
*	81			freqBodyBodyGyroJerkMagMeanFreq

		Average of the Mean of the frequency-domain magnitued of the mean frequency of the gyroscopic body-body jerk measurement
		
