## README

### Original Data Source

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called `CodeBook.md`. You should also include a `README.md` in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Processing the Data Set

1. The following six files from the original data source are merged into one data set as follows:

···train\subject_train.txt | train\x_train.txt | train\y_train.txt
···test\subject_test.txt   | test\x_test.txt   | test\y_test.txt

2. From the x component of the data set (i.e., x_train.txt and x_test.txt), only the columns that correspond to variables of the mean and standard deviation of the accelerometer and gyroscope measures were kept.

3. The activity codes in the activity component of the data set (i.e., y_train.txt and y_test.txt) were replaced with descriptive activity lables from the activity_labels.txt file from the original data source.

4. The variable names in the new data set were replaced with more descriptive names from the features.txt file from the original data set combined with some additional processing (e.g., expanding t to time and f to freq and cleaning up the format of the variable names).

5. A second data set was then created with the average of each accelerometer and gyroscope variable for each activity and each subject in the new data set.

### Processed Data Set

Please see the Codebook for a description of the processed data set.