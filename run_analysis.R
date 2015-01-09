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

