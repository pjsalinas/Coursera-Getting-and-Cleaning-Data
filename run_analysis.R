getwd()
[1] "/Users/laura"
# change the working directory
setwd('/Users/laura/Desktop/classes/Coursera/Data-Scientific-Toolbox/Getting-and-Cleaning-Data')
#
# download data
library('httr')
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file <- "getdata-projectfiles-UCI HAR Dataset.zip"
if(!file.exists(file)){
	print("... working downloading")
	download.file(url, file, method="curl")
}
#
#unzip the file, and create folders
dFolder <- "UCI HAR Dataset"
rFolder <- "results"
if(!file.exists(dFolder)){
	print("... unzip file")
	unzip(file, list = FALSE, overwrite = TRUE)
}
if(!file.exists(rFolder)){
	print("this is the results folder")
	dir.create(rFolder)
}
#
# function to read txt data files and convert them to data.frame
gettables <- function(filename, cols = NULL){
	print(paste("Getting Tables: ", filename))
	f <- paste(dFolder, filename, sep="/")
	data <- data.frame()
	if(is.null(cols)){
		data <- read.table(f, sep="", stringsAsFactors=F)
	} else {
		data <- read.table(f, sep="", stringsAsFactors=F, col.names = cols)
	}
	data
}
#
# run and check gettables
features <- gettables("features.txt")
#
# function to read data and prepare them
getdata <- function(type, features){
	print(paste("Getting Data", type))
	sData <- gettables(paste(type, "/", "subject_", type, ".txt", sep=""),"id")
	y_data <- gettables(paste(type,"/","y_",type,".txt",sep=""),"activity")
	x_data <- gettables(paste(type,"/","X_",type,".txt",sep=""),features$V2)
	return (cbind(sData,y_data,x_data))
}
# run and check data
test <- getdata("test", features)
train <- getdata("train", features)
#
# save the resulting data in the indicated folder
saveresults <- function(data,name){
	print(paste("saving results", name))
	file <- paste(rFolder, "/", name,".csv" ,sep="")
	write.csv(data,file)
}
# after getting prepare the files
library(plyr)
data <- rbind(train, test)
# arrange the datab by "id"
data <- arrange(data, id)
# extracts only the the measurements of the mean and standard deviation
mean_and_std <- data[,c(1,2,grep("std", colnames(data)), grep("mean", colnames(data)))]
saveresults(mean_and_std,"mean_and_std")
#
activity_labels <- gettables("activity_labels.txt")
data$activity <- factor(data$activity, levels=activity_labels$V1, labels=activity_labels$V2)
tidy_dataset <- ddply(mean_and_std, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })
colnames(tidy_dataset)[-c(1:2)] <- paste(colnames(tidy_dataset)[-c(1:2)], "_mean", sep="")
saveresults(tidy_dataset,"tidy_dataset")
