
# Code Book #
The tidy (processed) data set can be found in *tidy_data.txt*. This code book describes each variable and its values in the tidy data set. The tidy data set can be re-produced by running the *run\_analysis.R* R script. A description of the transformations performed by this script is available in *README.md*.

## Description of the Data Set ##

### Subjects ###

The experiments have been carried out with a group of 30 volunteers (subjects) within an age bracket of 19-48 years. Thus the variable identifying the subjects ranges from 1 to 30.

### Activities ###

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The experiments have been video-recorded to label the data manually. The activity variable is a character list whose value is one of these six activities.

### Observations ###

The *obtained* (original) dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The training and testing data were merged in the tidy data set. For each record it is provided:

  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  - Triaxial Angular velocity from the gyroscope. 
  - A 561-feature vector with time and frequency domain variables. 
  - Its activity label. 
  - An identifier of the subject who carried out the experiment.

### Features ###

  - The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

  - These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

  - Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

  - Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

  - Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
  
  - These signals were used to estimate variables of the feature vector for each pattern. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions:
  
    - **tBodyAcc-XYZ**
    - **tGravityAcc-XYZ**
    - **tBodyAccJerk-XYZ**
    - **tBodyGyro-XYZ**
    - **tBodyGyroJerk-XYZ**
    - **tBodyAccMag**
    - **tGravityAccMag**
    - **tBodyAccJerkMag**
    - **tBodyGyroMag**
    - **tBodyGyroJerkMag**
    - **fBodyAcc-XYZ**
    - **fBodyAccJerk-XYZ**
    - **fBodyGyro-XYZ**
    - **fBodyAccMag**
    - **fBodyAccJerkMag**  
    - **fBodyGyroMag**
    - **fBodyGyroJerkMag** 
  
  - The set of variables that were estimated from these signals are: 

      - **mean()**: Mean value        
      - **std()**: Standard deviation

### Variables ###
The tidy data set has 81 variables. It includes only the **mean()** and the **std()** variables of the signals listed above. These are variables number 3 to 81. The first variable is the activity type, and the second variable is the subject identification number.

### Observations ###
The number of rows (observations) is 180, which is equal to the number of activities (6) multiplied by the number of subjects (30).

### Values ###
The values of the variables represent the averages of each variable for each activity and each subject.

### List of Variables ###
This is a list of the variables in the tidy data set. Note that all features are normalized (thus dimensionless) and bounded within [-1,1]:

1. **activity**                        
1. **subject**                        
1. **tBodyAcc-mean()-X**               
1. **tBodyAcc-mean()-Y**              
1. **tBodyAcc-mean()-Z**              
1. **tBodyAcc-std()-X**               
1. **tBodyAcc-std()-Y**                
1. **tBodyAcc-std()-Z**               
1. **tGravityAcc-mean()-X**           
1. **tGravityAcc-mean()-Y**           
1. **tGravityAcc-mean()-Z**         
1. **tGravityAcc-std()-X**            
1. **tGravityAcc-std()-Y**          
1. **tGravityAcc-std()-Z**            
1. **tBodyAccJerk-mean()-X**        
1. **tBodyAccJerk-mean()-Y**          
1. **tBodyAccJerk-mean()-Z**         
1. **tBodyAccJerk-std()-X**           
1. **tBodyAccJerk-std()-Y**         
1. **tBodyAccJerk-std()-Z**           
1. **tBodyGyro-mean()-X**            
1. **tBodyGyro-mean()-Y**             
1. **tBodyGyro-mean()-Z**           
1. **tBodyGyro-std()-X**              
1. **tBodyGyro-std()-Y**            
1. **tBodyGyro-std()-Z**              
1. **tBodyGyroJerk-mean()-X**        
1. **tBodyGyroJerk-mean()-Y**         
1. **tBodyGyroJerk-mean()-Z**        
1. **tBodyGyroJerk-std()-X**          
1. **tBodyGyroJerk-std()-Y**         
1. **tBodyGyroJerk-std()-Z**          
1. **tBodyAccMag-mean()**            
1. **tBodyAccMag-std()**              
1. **tGravityAccMag-mean()**          
1. **tGravityAccMag-std()**           
1. **tBodyAccJerkMag-mean()**         
1. **tBodyAccJerkMag-std()**          
1. **tBodyGyroMag-mean()**            
1. **tBodyGyroMag-std()**             
1. **tBodyGyroJerkMag-mean()**        
1. **tBodyGyroJerkMag-std()**         
1. **fBodyAcc-mean()-X**              
1. **fBodyAcc-mean()-Y**              
1. **fBodyAcc-mean()-Z**             
1. **fBodyAcc-std()-X**               
1. **fBodyAcc-std()-Y**              
1. **fBodyAcc-std()-Z**               
1. **fBodyAcc-meanFreq()-X**         
1. **fBodyAcc-meanFreq()-Y**          
1. **fBodyAcc-meanFreq()-Z**        
1. **fBodyAccJerk-mean()-X**          
1. **fBodyAccJerk-mean()-Y**        
1. **fBodyAccJerk-mean()-Z**          
1. **fBodyAccJerk-std()-X**         
1. **fBodyAccJerk-std()-Y**           
1. **fBodyAccJerk-std()-Z**         
1. **fBodyAccJerk-meanFreq()-X**      
1. **fBodyAccJerk-meanFreq()-Y**     
1. **fBodyAccJerk-meanFreq()-Z**      
1. **fBodyGyro-mean()-X**            
1. **fBodyGyro-mean()-Y**             
1. **fBodyGyro-mean()-Z**            
1. **fBodyGyro-std()-X**              
1. **fBodyGyro-std()-Y**             
1. **fBodyGyro-std()-Z**              
1. **fBodyGyro-meanFreq()-X**        
1. **fBodyGyro-meanFreq()-Y**         
1. **fBodyGyro-meanFreq()-Z**        
1. **fBodyAccMag-mean()**             
1. **fBodyAccMag-std()**             
1. **fBodyAccMag-meanFreq()**         
1. **fBodyBodyAccJerkMag-mean()**    
1. **fBodyBodyAccJerkMag-std()**      
1. **fBodyBodyAccJerkMag-meanFreq()**
1. **fBodyBodyGyroMag-mean()**        
1. **fBodyBodyGyroMag-std()**          
1. **fBodyBodyGyroMag-meanFreq()**    
1. **fBodyBodyGyroJerkMag-mean()**     
1. **fBodyBodyGyroJerkMag-std()**     
1. **fBodyBodyGyroJerkMag-meanFreq()**

