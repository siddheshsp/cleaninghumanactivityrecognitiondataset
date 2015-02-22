
# Cleaning a Data Set for Human Activity Recognition Using Smartphones in R #

<br/>

## Objective ##
The objective of this project is to collect, work with and cleaning a data set to be used for later analysis.

## About the Data Set ##
This data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.

## Project Files ##

- **README.md:** This file.

- **raw\_data**: Contains the raw data files.

- **run\_analysis.R:** R script used to generate the tidy (processed) data set.

- **tidy\_data.txt:** Text file containing the tidy data set created with *write.table()* using *row.name=FALSE*. 

- **CodeBook.md:** A code book that describes the variables, the data, and transformations performed to clean up the data. 

## Reproduction ##
To reproduce the transformation performed by the *run\_analysis.R* script resulting in *tidy\_data.txt*:

1. Download this project into a folder on your computer (project root).
2. Unzip the *UCI\_HAR\_Dataset.zip* file in the *raw\_data* folder in place.
3. Load RStudio.
4. Set your working directory to the project root.
5. Source the *run\_analysis.R* script.

This project was created on RStudio Version 0.99.235 on a 64-bit Windows 7 machine. 

## Data Processing ##
The R script performs the following processing steps  on the raw data to produce the tidy data:

### Step 1 ###
Merges the training and the test sets to create one data set.

1. The following train-test pairs are merged (rows added) together:
	 - (X\_train.txt, X\_test.txt)
	 - (y\_train.txt, y\_test.txt)
	 - (subject\_train.txt, subject\_test.txt)
2. The result of the above merges are then merged together column-wise resulting in a single data frame.

### Step 2 ###
Extracts only the measurements on the mean and standard deviation for each measurement:

1. From the *features.txt* file extract the column numbers of the mean and standard deviation features.
2. Use the column numbers from the above step to extract the mean and standard variables from the merged data set.
  
### Step 3 ###
Uses descriptive activity names to name the activities in the data set:

1. From the *activity\_labels.txt* file extract the label pairs (label number, label string)
2. In labels column of the merged data set, replace the label number with the corresponding string from the extracted pairs. 

### Step 4 ###
Appropriately labels the data set with descriptive variable names:

1. From the *features.txt* file extract the labels of the mean and standard deviation features.
2. Apply these names to the merged data set.
3. Add labels for the *activity* and *subject* variables in the same data set.

### Step 5 ###
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Step 6 ###
Write the new data set to a text file using *write.table()* with *row.name=FALSE*. 
