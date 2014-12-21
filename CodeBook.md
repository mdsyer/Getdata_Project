## Codebook

### Original Data Source

[Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the original data:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[Full Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at the site where the data was obtained:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
    
### Processed Data Set

The processed data set consists of two files: 1) tidy_data_full.txt and 2) tidy_data_summary.txt.

#### tidy_data_full.txt

tidy_data_full.txt consists of the average (mean) and standard deviation (std) of measurements from an accelerometer (Acc) and gyroscope (Gyro) 3-axial signals (X, Y and Z) in the time (time) and frequency (freq) domains.  These signals have been divided into body (Body) and gravity (Gravity) signals and Jerk signals (Jerk) have been derived from the body signals.  The magnitude (Mag) of these signals has also been calculated.  tidy_data_full.txt consists of the following variables:

subject_id - a unique ID for the subject who carried out the experiment (one of: 1 to 30)
time-BodyAcc-mean-X - average time domain signal of the x-axis linear acceleration of the body
time-BodyAcc-mean-Y - average time domain signal of the y-axis linear acceleration of the body
time-BodyAcc-mean-Z - average time domain signal of the z-axis linear acceleration of the body
time-BodyAcc-std-X - standard deviation of the time domain signal of the x-axis linear acceleration of the body
time-BodyAcc-std-Y - standard deviation of the time domain signal of the y-axis linear acceleration of the body
time-BodyAcc-std-Z - standard deviation of the time domain signal of the z-axis linear acceleration of the body
time-GravityAcc-mean-X - average time domain signal of the x-axis gravitational acceleration
time-GravityAcc-mean-Y - average time domain signal of the y-axis gravitational acceleration
time-GravityAcc-mean-Z - average time domain signal of the z-axis gravitational acceleration
time-GravityAcc-std-X - standard deviation of the time domain signal of the x-axis gravitational acceleration
time-GravityAcc-std-Y - standard deviation of the time domain signal of the y-axis gravitational acceleration
time-GravityAcc-std-Z - standard deviation of the time domain signal of the z-axis gravitational acceleration
time-BodyAccJerk-mean-X - average time domain signal of the x-axis linear acceleration of the body jerk
time-BodyAccJerk-mean-Y - average time domain signal of the y-axis linear acceleration of the body jerk
time-BodyAccJerk-mean-Z - average time domain signal of the z-axis body linear acceleration of the body jerk
time-BodyAccJerk-std-X - standard deviation of the time domain signal of the x-axis linear acceleration of the body jerk
time-BodyAccJerk-std-Y - standard deviation of the time domain signal of the y-axis linear acceleration of the body jerk
time-BodyAccJerk-std-Z - standard deviation of the time domain signal of the z-axis linear acceleration of the body jerk
time-BodyGyro-mean-X - average time domain signal of the x-axis angular velocity of the body
time-BodyGyro-mean-Y - average time domain signal of the y-axis angular velocity of the body
time-BodyGyro-mean-Z - average time domain signal of the z-axis angular velocity of the body
time-BodyGyro-std-X - standard deviation of the time domain signal of the x-axis angular velocity of the body
time-BodyGyro-std-Y - standard deviation of the time domain signal of the y-axis angular velocity of the body
time-BodyGyro-std-Z - standard deviation of the time domain signal of the z-axis angular velocity of the body
time-BodyGyroJerk-mean-X - average time domain signal of the x-axis angular velocity of the body jerk
time-BodyGyroJerk-mean-Y - average time domain signal of the y-axis angular velocity of the body jerk
time-BodyGyroJerk-mean-Z - average time domain signal of the z-axis angular velocity of the body jerk
time-BodyGyroJerk-std-X - standard deviation of the time domain signal of the x-axis angular velocity of the body jerk
time-BodyGyroJerk-std-Y - standard deviation of the time domain signal of the y-axis angular velocity of the body jerk
time-BodyGyroJerk-std-Z - standard deviation of the time domain signal of the z-axis angular velocity of the body jerk
time-BodyAccMag-mean - average magnitude of the linear acceleration of the body
time-BodyAccMag-std - standard deviation of the magnitude of the linear acceleration of the body
time-GravityAccMag-mean - average magnitude of the gravitational acceleration
time-GravityAccMag-std - standard deviation of the magnitude of the gravitational acceleration
time-BodyAccJerkMag-mean - average magnitude of the time domain signal of the linear acceleration of the body jerk
time-BodyAccJerkMag-std - standard deviation of the magnitude of the time domain signal of the linear acceleration of the body jerk
time-BodyGyroMag-mean - average magnitude of the time domain signal of the angular velocity of the body
time-BodyGyroMag-std - standard deviation of the magnitude of the time domain signal of the angular velocity of the body
time-BodyGyroJerkMag-mean - average magnitude of the time domain signal of the angular velocity of the body jerk
time-BodyGyroJerkMag-std - standard deviation of the magnitude of the time domain signal of the angular velocity of the body jerk
freq-BodyAcc-mean-X - average frequency domain signal of the x-axis linear acceleration of the body
freq-BodyAcc-mean-Y - average frequency domain signal of the y-axis linear acceleration of the body
freq-BodyAcc-mean-Z - average frequency domain signal of the z-axis linear acceleration of the body
freq-BodyAcc-std-X - standard deviation of the frequency domain signal of the x-axis linear acceleration of the body
freq-BodyAcc-std-Y - standard deviation of the frequency domain signal of the y-axis linear acceleration of the body
freq-BodyAcc-std-Z - standard deviation of the frequency domain signal of the z-axis linear acceleration of the body
freq-BodyAccJerk-mean-X - average frequency domain signal of the x-axis linear acceleration of the body jerk
freq-BodyAccJerk-mean-Y - average frequency domain signal of the y-axis linear acceleration of the body jerk
freq-BodyAccJerk-mean-Z - average frequency domain signal of the z-axis body linear acceleration of the body jerk
freq-BodyAccJerk-std-X - standard deviation of the frequency domain signal of the x-axis linear acceleration of the body jerk
freq-BodyAccJerk-std-Y - standard deviation of the frequency domain signal of the y-axis linear acceleration of the body jerk
freq-BodyAccJerk-std-Z - standard deviation of the frequency domain signal of the z-axis linear acceleration of the body jerk
freq-BodyGyro-mean-X - average frequency domain signal of the x-axis angular velocity of the body
freq-BodyGyro-mean-Y - average frequency domain signal of the y-axis angular velocity of the body
freq-BodyGyro-mean-Z - average frequency domain signal of the z-axis angular velocity of the body
freq-BodyGyro-std-X - standard deviation of the frequency domain signal of the x-axis angular velocity of the body
freq-BodyGyro-std-Y - standard deviation of the frequency domain signal of the y-axis angular velocity of the body
freq-BodyGyro-std-Z - standard deviation of the frequency domain signal of the z-axis angular velocity of the body
freq-BodyAccMag-mean - average magnitude of the frequency domain signal of the linear acceleration of the body
freq-BodyAccMag-std - standard deviation of the magnitude of the frequency domain signal of the linear acceleration of the body
freq-BodyAccJerkMag-mean - average magnitude of the frequency domain signal of the linear acceleration of the body jerk
freq-BodyAccJerkMag-std - standard deviation of the magnitude of the frequency domain signal of the linear acceleration of the body jerk
freq-BodyGyroMag-mean - average magnitude of the frequency domain signal of the angular velocity of the body
freq-BodyGyroMag-std - standard deviation of the magnitude of the frequency domain signal of the angular velocity of the body
freq-BodyGyroJerkMag-mean - average magnitude of the frequency domain signal of the angular velocity of the body jerk
freq-BodyGyroJerkMag-std - standard deviation of the magnitude of the frequency domain signal of the angular velocity of the body jerk
activity_label - the name of the activity performed (one of: "laying", "sitting", "standing", "walking", "walking_downstairs" or "walking_upstairs")

#### tidy_data_full.txt

tidy_data_summary.txt contains the average of each accelerometer and gyroscope variable for each activity and each subject in the tidy_data_full.txt table.