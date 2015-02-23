<h2>CodeBook</h2>
This file describe variables and Transformations and working procedure for the peer assessment

download the required data from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and, the data it's found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Unzip the file if it still compressed
Create a result folder if there isn't one
Load the features.txt file features <- gettables("features.txt")
load the files in train folder: X_train.txt, y_train.txt and subject_train.txt
load the files in test folder: X_test.txt, y_test.txt, and subject_test.txt
Join train and test data
Modify the data using "id"
Load the activity labels.txt
Change the data activity row to use the activity labels
Saves the Meand and Standard Deviasion into the file './results/mean_and_std.csv', contains 10299 rows and 81 columns
save the tidy dataset into tidy_dataset into the file './results/tidy_dataset.csv', contains 180 rows and 81 columns
You can change the format of both files to '.txt' for uploading purpouse.
