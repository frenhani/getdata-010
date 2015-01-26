##Standard naming conventions
Variables starting with 'time' represent time domain signals captured from both the accelerometer and gyroscope sensors
in the Galaxy S device.

Variables starting with 'frequency' represent frequency domain signals after a Fast Fourier Transform (FFT) was applied to
these signals. Acceleration signals were separated into 'bodyacceleration' and 'gravityacceleration' variables using a 
low pass filter.

##jerk indicator
Variables marked with a 'jerk' indicator represent time-derived variables from body linear acceleration and angular velocity
variables.

##XYZ axis
Some variable names are terminated by either X, Y and Z representing each of the 3-axial signals X, Y and Z in a three 
dimensional vector representation.

##Finally, since we are only interested in mean and standard deviation variables, the word 'mean' and 'std' indicates whether
the variable represents a mean() calculation or a standard deviation (std()) calculation for that particular measurement.

##1) Time domain variables

##1.1) Mean and standard deviation for body acceleration estimates on each of the three axis (X, Y and Z)
timebodyaccelerationmeanX
timebodyaccelerationmeanY
timebodyaccelerationmeanZ
timebodyaccelerationstdX
timebodyaccelerationstdY
timebodyaccelerationstdZ

##1.2) Mean and standard deviation for gravity acceleration estimates on each of the three axis (X, Y and Z)
timegravityaccelerationmeanX
timegravityaccelerationmeanY
timegravityaccelerationmeanZ
timegravityaccelerationstdX
timegravityaccelerationstdY
timegravityaccelerationstdZ

##1.3) Mean and standard deviation for body acceleration jerk signals on each of the three axis (X, Y and Z)
timebodyaccelerationjerkmeanX
timebodyaccelerationjerkmeanY
timebodyaccelerationjerkmeanZ
timebodyaccelerationjerkstdX
timebodyaccelerationjerkstdY
timebodyaccelerationjerkstdZ

##1.4) Mean and standard deviation for body gyroscope estimates on each of the three axis (X, Y and Z)
timebodygyromeanX
timebodygyromeanY
timebodygyromeanZ
timebodygyrostdX
timebodygyrostdY
timebodygyrostdZ

##1.5) Mean and standard deviation for body gyroscope jerk signals on each of the three axis (X, Y and Z)
timebodygyrojerkmeanX
timebodygyrojerkmeanY
timebodygyrojerkmeanZ
timebodygyrojerkstdX
timebodygyrojerkstdY
timebodygyrojerkstdZ

##1.6) Mean and standard deviation for magnitude values on the three-dimensional time domain signals listed above.
timebodyaccelerationmagnitudemean
timebodyaccelerationmagnitudestd
timegravityaccelerationmagnitudemean
timegravityaccelerationmagnitudestd
timebodyaccelerationjerkmagnitudemean
timebodyaccelerationjerkmagnitudestd
timebodygyromagnitudemean
timebodygyromagnitudestd
timebodygyrojerkmagnitudemean
timebodygyrojerkmagnitudestd

##2) Frequency domain variables (after applying Fast Fourier Transform to time domain signals)

##2.1) Mean and standard deviation for body acceleration estimates on each of the three axis (X, Y and Z)
frequencybodyaccelerationmeanX
frequencybodyaccelerationmeanY
frequencybodyaccelerationmeanZ
frequencybodyaccelerationstdX
frequencybodyaccelerationstdY
frequencybodyaccelerationstdZ

##2.2) Mean and standard deviation for body acceleration jerk signals on each of the three axis (X, Y and Z)
frequencybodyaccelerationjerkmeanX
frequencybodyaccelerationjerkmeanY
frequencybodyaccelerationjerkmeanZ
frequencybodyaccelerationjerkstdX
frequencybodyaccelerationjerkstdY
frequencybodyaccelerationjerkstdZ

##2.3) Mean and standard deviation for body gyroscope estimates on each of the three axis (X, Y and Z)
frequencybodygyromeanX
frequencybodygyromeanY
frequencybodygyromeanZ
frequencybodygyrostdX
frequencybodygyrostdY
frequencybodygyrostdZ

##2.4) Mean and standard deviation for magnitude values on the three-dimensional frequency domain signals listed above.
frequencybodyaccelerationmagnitudemean
frequencybodyaccelerationmagnitudestd
frequencybodybodyaccelerationjerkmagnitudemean
frequencybodybodyaccelerationjerkmagnitudestd
frequencybodybodygyromagnitudemean
frequencybodybodygyromagnitudestd
frequencybodybodygyrojerkmagnitudemean
frequencybodybodygyrojerkmagnitudestd
