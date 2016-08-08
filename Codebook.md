                      DATA DICTIONARY - Smartphone Dataset

subject		2
	Identifier of the subject who carried out the experiment
		1 to 30

activity	18
	Activity that was measured
		WALKING

		WALKING_UPSTAIRS

		WALKING_DOWNSTAIRS

		SITTING

		STANDING

		LAYING


For the rests of the columns/labels are real number values, based on the following:
  The following columns/labels selected for this database come from the accelerometer and gyroscope 
  3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) 
  were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd 
  order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
  the acceleration signal was then separated into body and gravity acceleration signals 
  (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner 
  frequency of 0.3 Hz. 

  Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
  Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional 
  signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
  tBodyGyroMag, tBodyGyroJerkMag). 

  Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
  frequency-*-XYZ.  

  These signals were used to estimate variables of the feature vector for each pattern:  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

  The set of variables that were estimated from these signals are: 
     mean(): Mean value
     std(): Standard deviation

  Additional vectors obtained by averaging the signals in a signal window sample. These are used 
  on the angle() variable:
     gravityMean
     tBodyAccMean
     tBodyAccJerkMean
     tBodyGyroMean
     tBodyGyroJerkMean

  The other column/labels for the data set, based on the above information, are:
     time-Body-Accelerometer-mean()-X
     time-Body-Accelerometer-mean()-Y
     time-Body-Accelerometer-mean()-Z
     time-Body-Accelerometer-std()-X
     time-Body-Accelerometer-std()-Y
     time-Body-Accelerometer-std()-Z
     time-Gravity-Accelerometer-mean()-X
     time-Gravity-Accelerometer-mean()-Y
     time-Gravity-Accelerometer-mean()-Z
     time-Gravity-Accelerometer-std()-X
     time-Gravity-Accelerometer-std()-Y
     time-Gravity-Accelerometer-std()-Z
     time-Body-Accelerometer-Jerk-mean()-X
     time-Body-Accelerometer-Jerk-mean()-Y
     time-Body-Accelerometer-Jerk-mean()-Z
     time-Body-Accelerometer-Jerk-std()-X
     time-Body-Accelerometer-Jerk-std()-Y
     time-Body-Accelerometer-Jerk-std()-Z
     time-Body-Gyroscope-mean()-X
     time-Body-Gyroscope-mean()-Y
     time-Body-Gyroscope-mean()-Z
     time-Body-Gyroscope-std()-X
     time-Body-Gyroscope-std()-Y
     time-Body-Gyroscope-std()-Z
     time-Body-Gyroscope-Jerk-mean()-X
     time-Body-Gyroscope-Jerk-mean()-Y
     time-Body-Gyroscope-Jerk-mean()-Z
     time-Body-Gyroscope-Jerk-std()-X
     time-Body-Gyroscope-Jerk-std()-Y
     time-Body-Gyroscope-Jerk-std()-Z
     time-Body-Accelerometer-Magnitude-mean()
     time-Body-Accelerometer-Magnitude-std()
     time-Gravity-Accelerometer-Magnitude-mean()
     time-Gravity-Accelerometer-Magnitude-std()
     time-Body-Accelerometer-Jerk-Magnitude-mean()
     time-Body-Accelerometer-Jerk-Magnitude-std()
     time-Body-Gyroscope-Magnitude-mean()
     time-Body-Gyroscope-Magnitude-std()
     time-Body-Gyroscope-Jerk-Magnitude-mean()
     time-Body-Gyroscope-Jerk-Magnitude-std()
     frequency-Body-Accelerometer-mean()-X
     frequency-Body-Accelerometer-mean()-Y
     frequency-Body-Accelerometer-mean()-Z     
     frequency-Body-Accelerometer-std()-X
     frequency-Body-Accelerometer-std()-Y
     frequency-Body-Accelerometer-std()-Z
     frequency-Body-Accelerometer-Jerk-mean()-X
     frequency-Body-Accelerometer-Jerk-mean()-Y
     frequency-Body-Accelerometer-Jerk-mean()-Z
     frequency-Body-Accelerometer-Jerk-std()-X
     frequency-Body-Accelerometer-Jerk-std()-Y
     frequency-Body-Accelerometer-Jerk-std()-Z
     frequency-Body-Gyroscope-mean()-X
     frequency-Body-Gyroscope-mean()-Y
     frequency-Body-Gyroscope-mean()-Z
     frequency-Body-Gyroscope-std()-X
     frequency-Body-Gyroscope-std()-Y
     frequency-Body-Gyroscope-std()-Z
     frequency-Body-Accelerometer-Magnitude-mean()
     frequency-Body-Accelerometer-Magnitude-std()
     frequency-Body-Body-Accelerometer-Jerk-Magnitude-mean()
     frequency-Body-Body-Accelerometer-Jerk-Magnitude-std()
     frequency-Body-Body-Gyroscope-Magnitude-mean()
     frequency-Body-Body-Gyroscope-Magnitude-std()
     frequency-Body-Body-Gyroscope-Jerk-Magnitude-mean()
     frequency-Body-Body-Gyroscope-Jerk-Magnitude-std()


