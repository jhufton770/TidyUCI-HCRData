Human Activity Recognition Using Samrphones Dataset Codebook
===========

Purpose
-----------
This codebook describes the data fields present in the summarized Tidy UCI HAR dataset. This data set was created by joining both the 
test and training datasets supplied in the UCI HAR dataset zip file.  A subset of the observations was taken which represent the mean and standard deviation measurements present in that dataset.  These measurements were then averaged for each of six activities used to measure each of 30 subjects.

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
	*	Gravity - low range frequency components of the data which are interprested as the effects of gravity

Measurements from each set of observational variables are presented in the time-domain, as well as in the frequency-domain.  Frequency-domain information was obtained by applying a Fast Fourier Transform to some of the data.

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

		Mean of time-domain body acceleration: X-axis measurement
					
*	4			timeBodyAccMeanY

		Mean of time-domain body acceleration: Y-axis measurement
					
*	5			timeBodyAccMeanZ

		Mean of time-domain body acceleration: Z-axis measurement
		
*	6			timeBodyAccStdX

		Std. Dev. of time-domain body acceleration: X-axis measurement
		
*	7			timeBodyAccStdY

		Std. Dev. of time-domain body acceleration: Y-axis measurement
		
*	8			timeBodyAccStdZ

		Std. Dev. of time-domain body acceleration: Z-axis measurement
		
*	9			timeGravityAccMeanX

		Mean of time-domain gravity acceleration: X-axis measurement
		
*	10			timeGravityAccMeanY

		Mean of time-domain gravity acceleration: Y-axis measurement
		
*	11			timeGravityAccMeanZ

		Mean of time-domain gravity acceleration: Z-axis measurement
		
*	12			timeGravityAccStdX
	
		Std. Dev. of time-domain gravity acceleration: X-axis measurement
		
*	13			timeGravityAccStdY

		Std. Dev. of time-domain gravity acceleration: Y-axis measurement
		
*	14			timeGravityAccStdZ

		Std. Dev. of time-domain gravity acceleration: Z-axis measurement
		
*	15			timeBodyAccJerkMeanX

		Mean of the time-domain body jerk acceleration: X-axis measurement
*	16			timeBodyAccJerkMeanY

		Mean of the time-domain body jerk acceleration: Y-axis measurement
		
*	17			timeBodyAccJerkMeanZ

		Mean of the time-domain body jerk acceleration: Z-axis measurement
		
*	18			timeBodyAccJerkStdX

		Std. Dev. of the time-domain body jerk acceleration: X-axis measurement
		
*	19			timeBodyAccJerkStdY

		Std. Dev. of the time-domain body jerk acceleration: Y-axis measurement
		
*	20			timeBodyAccJerkStdZ
	
		Std. Dev. of the time domein body jerk acceleration: Z-axis measurement
		
*	21			timeBodyGyroMeanX

		Mean of the time-domain body gyroscope information: X-axis measurement
		
*	22			timeBodyGyroMeanY

		Mean of the time-domain body gyroscope information: Y-axis measurement
		
*	23			timeBodyGyroMeanZ

		Mean of the time-domain body gyroscope information: Z-axis measurement
		
*	24			timeBodyGyroStdX

		Std. Dev, of the time-domain body gyroscope information: X-axis measurement
		
*	25			timeBodyGyroStdY

		Std. Dev, of the time-domain body gyroscope information: Y-axis measurement
		
*	26			timeBodyGyroStdZ

		Std. Dev, of the time-domain body gyroscope information: Z-axis measurement
		
*	27			timeBodyGyroJerkMeanX

		Mean of the time-domain body jerk motion gyroscope information: X-axis measurement
		
*	28			timeBodyGyroJerkMeanY

		Mean of the time-domain body jerk motion gyroscope information: Y-axis measurement
		
*	29			timeBodyGyroJerkMeanZ

		Mean of the time-domain body jerk motion gyroscope information: Z-axis measurement
		
*	30			timeBodyGyroJerkStdX

		Std. Dev. of the time-domain body jerk motion gyroscope information: X-axis measurement
		
*	31			timeBodyGyroJerkStdY

		Std. Dev. of the time-domain body jerk motion gyroscope information: Y-axis measurement
		
*	32			timeBodyGyroJerkStdZ

		Std. Dev. of the time-domain body jerk motion gyroscope information: Z-axis measurement
		
*	33			timeBodyAccMagMean

		Mean of the time-domain 3-dimenaional magnitude body acceleration measurement
		
*	34			timeBodyAccMagStd

		Std. Dev. of the time-domain 3-dimenaional magnitude body acceleration measurement
		
*	35			timeGravityAccMagMean

		Mean of the time-domain 3-dimenaional magnitude gravity acceleration measurement
		
*	36			timeGravityAccMagStd

		Std. Dev. of the time-domain 3-dimenaional magnitude gravity acceleration measurement
		
*	37			timeBodyAccJerkMagMean

		Mean of the time-domain 3-dimenaional magnitude body jerk acceleration measurement
		
*	38			timeBodyAccJerkMagStd

		Std. Dev. of the time-domain 3-dimenaional magnitude body jerk acceleration measurement
		
*	39			timeBodyGyroMagMean

		Mean of the time-domain 3-dimenaional magnitude body gyroscope measurement
		
*	40			timeBodyGyroMagStd

		Std. Dev. of the time-domain 3-dimenaional magnitude body gyroscope measurement
		
*	41			timeBodyGyroJerkMagMean

		Mean of the time-domain 3-dimenaional magnitude body jerk gyroscope measurement
		
*	42			timeBodyGyroJerkMagStd

		Std. Dev. of the time-domain 3-dimenaional magnitude body jerk gyroscope measurement
		
*	43			freqBodyAccMeanX

		Mean of frequency-domain body acceleration: X-axis measurement
	
*	44			freqBodyAccMeanY

		Mean of frequency-domain body acceleration: Y-axis measurement
		
*	45			freqBodyAccMeanZ

		Mean of frequency-domain body acceleration: Z-axis measurement
		
*	46			freqBodyAccStdX

		Std. Dev of frequency-domain body acceleration: X-axis measurement
		
*	47			freqBodyAccStdY

		Std. Dev of frequency-domain body acceleration: Y-axis measurement
		
*	48			freqBodyAccStdZ

		Std. Dev of frequency-domain body acceleration: Z-axis measurement
		
*	49			freqBodyAccMeanFreqX

		Mean of frequency-domain body acceleration mean frequency: X-axis measurement
		
*	50			freqBodyAccMeanFreqY

		Mean of frequency-domain body acceleration mean frequency: Y-axis measurement
		
*	51			freqBodyAccMeanFreqZ

		Mean of frequency-domain body acceleration mean frequency: Z-axis measurement
		
*	52			freqBodyAccJerkMeanX

		Mean of frequency-domain body jerk acceleration: X-axis measurement
		
*	53			freqBodyAccJerkMeanY

		Mean of frequency-domain body jerk acceleration: Y-axis measurement
		
*	54			freqBodyAccJerkMeanZ

		Mean of frequency-domain body jerk acceleration: Z-axis measurement
		
*	55			freqBodyAccJerkStdX

		Std. Dev. of frequency-domain body jerk acceleration: X-axis measurement
		
*	56			freqBodyAccJerkStdY

		Mean of frequency-domain body jerk acceleration: Y-axis measurement
		
*	57			freqBodyAccJerkStdZ

		Mean of frequency-domain body jerk acceleration: Z-axis measurement
		
*	58			freqBodyAccJerkMeanFreqX

		Mean of frequency-domain body jerk acceleration mean frequency: X-axis measurement
		
*	59			freqBodyAccJerkMeanFreqY

		Mean of frequency-domain body jerk acceleration mean frequency: Y-axis measurement
		
*	60			freqBodyAccJerkMeanFreqZ

		Mean of frequency-domain body jerk acceleration mean frequency: Z-axis measurement
		
*	61			freqBodyGyroMeanX

		Mean of the frequency-domain body gyroscope information: X-axis measurement
		
*	62			freqBodyGyroMeanY

		Mean of the frequency-domain body gyroscope information: Y-axis measurement
		
*	63			freqBodyGyroMeanZ

		Mean of the frequency-domain body gyroscope information: Z-axis measurement
		
*	64			freqBodyGyroStdX

		Std. Dev. of the frequency-domain body gyroscope information: X-axis measurement
		
*	65			freqBodyGyroStdY

		Std. Dev. of the frequency-domain body gyroscope information: Y-axis measurement
		
*	66			freqBodyGyroStdZ

		Std. Dev. of the frequency-domain body gyroscope information: Z-axis measurement
		
*	67			freqBodyGyroMeanFreqX

		 Mean of the frequency-domain body gyroscope mean frequency information: X-axis measurement
		 
*	68			freqBodyGyroMeanFreqY

		Mean of the frequency-domain body gyroscope mean frequency information: Y-axis measurement
		
*	69			freqBodyGyroMeanFreqZ

		Mean of the frequency-domain body gyroscope mean frequency information: Z-axis measurement
		
*	70			freqBodyAccMagMean

		Mean of the frequency-domain magnitude of body acceleration measurement
		
*	71			freqBodyAccMagStd

		Std. Dev. of the frequency-domain magnitude of body acceleration measurement
		
*	72			freqBodyAccMagMeanFreq

		Mean of the frequency magnitude of the mean frequency of body accelereation measurement
		
*	73			freqBodyBodyAccJerkMagMean

		Mean of the frequency-domain magnitude of the mean frequency of body-body accelereation measurement
		
*	74			freqBodyBodyAccJerkMagStd

		Std. Dev. of the frequency-domain magnitude of body-body jerk accelereation measurement
		
*	75			freqBodyBodyAccJerkMagMeanFreq

		Mean of the frequency-domain magnitude of the mean frequency of body-body jerk acceleration measurement
		
*	76			freqBodyBodyGyroMagMean

		Mean of the frequency-domain magnitude of the gyroscopic body-body measurement
		
*	77			freqBodyBodyGyroMagStd

		Std. Dev. of the frequency-domain magnitude of the gyroscopic body-body measurement
	
*	78			freqBodyBodyGyroMagMeanFreq

		Mean of the frequency-domain magnitude of the mean frequency of the gyroscopic body-body measurement
		
*	79			freqBodyBodyGyroJerkMagMean

		Mean of the frequency-domain magnitude of the mean frequency of the gyroscopic body-body jerk measurement
		
*	80			freqBodyBodyGyroJerkMagStd

		Mean of the frequency-domain magnitude of the gyroscopic body-body jerk measurement
		
*	81			freqBodyBodyGyroJerkMagMeanFreq

		Mean of the frequency-domain magnitued of the mean frequency of the gyroscopic body-body jerk measurement
		
