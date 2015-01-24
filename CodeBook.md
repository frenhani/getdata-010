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

Examples:
frequencybodyaccelerationmeanX - mean of frequency domain signal for the body acceleration X axis
timegravityaccelerationstdZ - standard deviation of time domain signal for the gravity acceleration Z axis
