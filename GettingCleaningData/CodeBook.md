### Study design

The experiments have been carried out with a group of 30 volunteers within an age bracket 
of 19-48 years. Each person performed six activities (walking, walkingUpstairs, 
walkingDownstairs, sitting, standing and laying) wearing a smartphone (Samsung Galaxy S 
II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial 
linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The 
experiments have been video-recorded to label the data manually. The obtained dataset 
has been randomly partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise 
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, which has gravitational and body 
motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency 
components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time and frequency 
domain.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated 
body acceleration
- Triaxial Angular velocity from the gyroscope
- A 561-feature vector with time and frequency domain variables 
- Its activity label
- An identifier of the subject who carried out the experiment

### Feature selection: from raw data to processed data 

The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals (X, Y and Z directions) - timeAccelerationXYZ and timeAngularVelocityXYZ. 
The acceleration signal was then separated into body and gravity acceleration signals 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz.: 
- timeBodyAccelerationXYZ 
- timeGravityAccelerationXYZ

Subsequently, the body linear acceleration and angular velocity were derived in time to 
obtain Jerk signals: 
- timeBodyAccelerationJerkXYZ
- timeBodyAngularVelocityJerkXYZ
 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean 
norm:
- timeBodyAccelerationMagnitude
- timeGravityAccelerationMagnitude
- timeBodyAccelerationJerkMagnitude
- timeBodyAngularVelocityMagnitude
- timeBodyAngularVelocityJerkMagnitude 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing:
- frequencyBodyAccelerationXYZ
- frequencyBodyAccelerationJerkXYZ
- frequencyBodyAngularVelocityXYZ
- frequencyBodyAccelerationJerkMagnitude
- frequencyBodyAngularVelocityMagnitude 
- frequencyBodyAngularVelocityJerkMagnitude

The set of variables that were estimated from these signals for this project are: 

- Mean: Mean value
- Std: Standard deviation

### Complete list of variables in the tidy data set

The unit for variables whose names starting with "time" is second

The unit for variables whose names starting with "frequency" is radians/second

1 subjectID

2 activity

3 timeBodyAccelerationMeanX

4 timeBodyAccelerationMeanY

5 timeBodyAccelerationMeanZ

6 timeGravityAccelerationMeanX

7 timeGravityAccelerationMeanY

8 timeGravityAccelerationMeanZ

9 timeBodyAccelerationJerkMeanX

10 timeBodyAccelerationJerkMeanY

11 timeBodyAccelerationJerkMeanZ

12 timeBodyAngularVelocityMeanX

13 timeBodyAngularVelocityMeanY

14 timeBodyAngularVelocityMeanZ

15 timeBodyAngularVelocityJerkMeanX

16 timeBodyAngularVelocityJerkMeanY

17 timeBodyAngularVelocityJerkMeanZ

18 timeBodyAccelerationMagnitudeMean

19 timeGravityAccelerationMagnitudeMean

20 timeBodyAccelerationJerkMagnitudeMean

21 timeBodyAngularVelocityMagnitudeMean

22 timeBodyAngularVelocityJerkMagnitudeMean

23 frequencyBodyAccelerationMeanX

24 frequencyBodyAccelerationMeanY

25 frequencyBodyAccelerationMeanZ

26 frequencyBodyAccelerationMeanFreqX

27 frequencyBodyAccelerationMeanFreqY

28 frequencyBodyAccelerationMeanFreqZ

29 frequencyBodyAccelerationJerkMeanX

30 frequencyBodyAccelerationJerkMeanY

31 frequencyBodyAccelerationJerkMeanZ

32 frequencyBodyAccelerationJerkMeanFreqX

33 frequencyBodyAccelerationJerkMeanFreqY

34 frequencyBodyAccelerationJerkMeanFreqZ

35 frequencyBodyAngularVelocityMeanX

36 frequencyBodyAngularVelocityMeanY

37 frequencyBodyAngularVelocityMeanZ

38 frequencyBodyAngularVelocityMeanFreqX

39 frequencyBodyAngularVelocityMeanFreqY

40 frequencyBodyAngularVelocityMeanFreqZ

41 frequencyBodyAccelerationMagnitudeMean

42 frequencyBodyAccelerationMagnitudeMeanFreq

43 frequencyBodyAccelerationJerkMagnitudeMean

44 frequencyBodyAccelerationJerkMagnitudeMeanFreq

45 frequencyBodyAngularVelocityMagnitudeMean

46 frequencyBodyAngularVelocityMagnitudeMeanFreq

47 frequencyBodyAngularVelocityJerkMagnitudeMean

48 frequencyBodyAngularVelocityJerkMagnitudeMeanFreq

49 timeBodyAccelerationStdX

50 timeBodyAccelerationStdY

51 timeBodyAccelerationStdZ

52 timeGravityAccelerationStdX

53 timeGravityAccelerationStdY

54 timeGravityAccelerationStdZ

55 timeBodyAccelerationJerkStdX

56 timeBodyAccelerationJerkStdY

57 timeBodyAccelerationJerkStdZ

58 timeBodyAngularVelocityStdX

59 timeBodyAngularVelocityStdY

60 timeBodyAngularVelocityStdZ

61 timeBodyAngularVelocityJerkStdX

62 timeBodyAngularVelocityJerkStdY

63 timeBodyAngularVelocityJerkStdZ

64 timeBodyAccelerationMagnitudeStd

65 timeGravityAccelerationMagnitudeStd

66 timeBodyAccelerationJerkMagnitudeStd

67 timeBodyAngularVelocityMagnitudeStd

68 timeBodyAngularVelocityJerkMagnitudeStd

69 frequencyBodyAccelerationStdX

70 frequencyBodyAccelerationStdY

71 frequencyBodyAccelerationStdZ

72 frequencyBodyAccelerationJerkStdX

73 frequencyBodyAccelerationJerkStdY

74 frequencyBodyAccelerationJerkStdZ

75 frequencyBodyAngularVelocityStdX

76 frequencyBodyAngularVelocityStdY

77 frequencyBodyAngularVelocityStdZ

78 frequencyBodyAccelerationMagnitudeStd

79 frequencyBodyAccelerationJerkMagnitudeStd

80 frequencyBodyAngularVelocityMagnitudeStd

81 frequencyBodyAngularVelocityJerkMagnitudeStd

