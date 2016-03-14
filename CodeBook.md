The dataset contains the following variables
[1] "activityclass"                        "subjectID"                           
 [3] "activitytype"                         "tBodyAcc-mean()-X"                   
 [5] "tBodyAcc-mean()-Y"                    "tBodyAcc-mean()-Z"                   
 [7] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                
 [9] "tGravityAcc-mean()-Z"                 "tBodyAccJerk-mean()-X"               
[11] "tBodyAccJerk-mean()-Y"                "tBodyAccJerk-mean()-Z"               
[13] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                  
[15] "tBodyGyro-mean()-Z"                   "tBodyGyroJerk-mean()-X"              
[17] "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"              
[19] "tBodyAccMag-mean()"                   "tGravityAccMag-mean()"               
[21] "tBodyAccJerkMag-mean()"               "tBodyGyroMag-mean()"                 
[23] "tBodyGyroJerkMag-mean()"              "fBodyAcc-mean()-X"                   
[25] "fBodyAcc-mean()-Y"                    "fBodyAcc-mean()-Z"                   
[27] "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"               
[29] "fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"               
[31] "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"               
[33] "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"           
[35] "fBodyAccJerk-meanFreq()-Z"            "fBodyGyro-mean()-X"                  
[37] "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                  
[39] "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[41] "fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"                  
[43] "fBodyAccMag-meanFreq()"               "fBodyBodyAccJerkMag-mean()"          
[45] "fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"             
[47] "fBodyBodyGyroMag-meanFreq()"          "fBodyBodyGyroJerkMag-mean()"         
[49] "fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean,gravity)"         
[51] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[53] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                
[55] "angle(Y,gravityMean)"                 "angle(Z,gravityMean)"                
[57] "tBodyAcc-std()-X"                     "tBodyAcc-std()-Y"                    
[59] "tBodyAcc-std()-Z"                     "tGravityAcc-std()-X"                 
[61] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
[63] "tBodyAccJerk-std()-X"                 "tBodyAccJerk-std()-Y"                
[65] "tBodyAccJerk-std()-Z"                 "tBodyGyro-std()-X"                   
[67] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
[69] "tBodyGyroJerk-std()-X"                "tBodyGyroJerk-std()-Y"               
[71] "tBodyGyroJerk-std()-Z"                "tBodyAccMag-std()"                   
[73] "tGravityAccMag-std()"                 "tBodyAccJerkMag-std()"               
[75] "tBodyGyroMag-std()"                   "tBodyGyroJerkMag-std()"              
[77] "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                    
[79] "fBodyAcc-std()-Z"                     "fBodyAccJerk-std()-X"                
[81] "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                
[83] "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                   
[85] "fBodyGyro-std()-Z"                    "fBodyAccMag-std()"                   
[87] "fBodyBodyAccJerkMag-std()"            "fBodyBodyGyroMag-std()"              
[89] "fBodyBodyGyroJerkMag-std()"


Each line contains data related to movement of type	=	activityclass and activity type and subjectID
____________________________________________________________________________________________________________________________

The dataset has been generated via the following steps:

Downloading the files from:	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
____________________________________________________________________________________________________________________________

The following files have been used:

- 'features.txt': 		List of all features.

- 'activity_labels.txt': 	Links the class labels with their activity name.

- 'train/X_train.txt': 		Training set.

- 'train/y_train.txt': 		Training labels.

- 'test/X_test.txt': 		Test set.

- 'test/y_test.txt': 		Test labels.

- 'test/subject_test.txt':	Subject ID test set
							
- 'train/subject_train.txt':	Subject ID train set
____________________________________________________________________________________________________________________________

For each set (train/test) the following steps has been performed:

1. Read the files into R
2. Columnbind y_train/test to subject_train/test
3. Add columnnames
4. Merge activity labes 
5. Read data into R
6. Add columnnames from features.txt
7. Columnbind data to labels
8. Rowbind test and train data sets
9. Subset on columns containing mean or std
10. Final full dataset
11. Aggregate by activity and subject to generate mean to second dataset
12. Write file containing second dataset.
____________________________________________________________________________________________________________________________

END


