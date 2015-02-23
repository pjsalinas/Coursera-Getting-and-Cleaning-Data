<h2>CodeBook</h2>
<p>This file describe variables and Transformations and working procedure for the peer assessment</p>
<br />
<p>download the required data from:</p>
<p>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</p>
<p>and, the data it's found at:</p>
<p>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip </p>
<p>Unzip the file if it still compressed</p>
<p>Create a result folder if there isn't one</p>
<p>Load the features.txt file features <- gettables("features.txt")</p>
<p>load the files in train folder: X_train.txt, y_train.txt and subject_train.txt</p>
<p>load the files in test folder: X_test.txt, y_test.txt, and subject_test.txt</p>
<p>Join train and test data</p>
<p>Modify the data using "id"</p>
<p>Load the activity labels.txt</p>
<p>Change the data activity row to use the activity labels</p>
<p>Saves the Meand and Standard Deviasion into the file './results/mean_and_std.csv', contains 10299 rows and 81 columns</p>
<p>Save the tidy dataset into tidy_dataset into the file './results/tidy_dataset.csv', contains 180 rows and 81 columns</p>
<p>You can change the format of both files to '.txt' for uploading purpouse.</p>
