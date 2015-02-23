<h2>CodeBook</h2>
<p>This file describe variables and Transformations and working procedure for the peer assessment</p>
<br />
<p>download the required data from:</p>
<p>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</p>
<br />
<p>and, the data it's found at:</p>
<p>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip </p>
<br />
<p>Unzip the file getdata-projectfiles-UCI HAR Dataset.zip, if it still compressed</p>
<p>Create a 'results' folder rFolder <- "results", and dFolder <- "UCI HAR Dataset" folder, if there is not one</p>
<p>Load the features.txt file using the function gettables(), features <- gettables("features.txt")</p>
<p>load the files in train folder: X_train.txt, y_train.txt and subject_train.txt, using the function getdata wich calls function gettables() into variable train</p>
<p>load the files in test folder: X_test.txt, y_test.txt, and subject_test.txt, using the same procedure than in previous line but into variable test in this case</p>
<p>Bind the data in train and test into the data variable</p>
<p>Rearrenge the data in data using the "id" column</p>
<p>Compute the "mean" and "standard deviation, std" from data and hold them in mean_an_std.csv"</p>
<p>Load the activity labels.txt</p>
<p>Change the data activity row to use the activity labels</p>
<p>Saves the Meand and Standard Deviasion into the file './results/mean_and_std.csv', contains 10299 rows and 81 columns</p>
<p>Save the tidy dataset into tidy_dataset into the file './results/tidy_dataset.csv', contains 180 rows and 81 columns</p>
<p>You can change the format of both files to '.txt' on the function saveresults, 'file <- paste(rFolder, "/", name, ".txt", sep="")' if there is need for that</p>
