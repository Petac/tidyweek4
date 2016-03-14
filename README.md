
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


