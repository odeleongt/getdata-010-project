#*-----------------------------------------------------------------------------*
# Getting and cleaning data 016 course project 
#*-----------------------------------------------------------------------------*


#*-----------------------------------------------------------------------------*
# Get and read the data
#*-----------------------------------------------------------------------------*

# Data file location
file_uri <-
	paste0(uri = "https://d396qusza40orc.cloudfront.net/getdata/projectfiles/",
				 filename =  "UCI HAR Dataset.zip")

# Download the data file if it is not available in the working directory
if(!file.exists("UCI HAR Dataset.zip")){
	download.file(url = file_uri, destfile = "UCI HAR Dataset.zip")
}

# Unzip the data files
unzip(zipfile = "UCI HAR Dataset.zip", junkpaths = TRUE)

# Read the training set and labels
train <- read.table(file = "UCI HAR Dataset/train/X_train.txt", sep = "")
train_labels <- read.table(file = "UCI HAR Dataset/train/y_train.txt", sep = "")

# Read the test set and labels
test <- read.table(file = "UCI HAR Dataset/test/X_test.txt", sep = "")
test_labels <- read.table(file = "UCI HAR Dataset/test/y_test.txt", sep = "")
