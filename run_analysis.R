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
unzip(zipfile = "UCI HAR Dataset.zip")

# Read the training set, subjects and labels
train <- read.table(file = "UCI HAR Dataset/train/X_train.txt", sep = "",
										stringsAsFactors = FALSE)
train_labels <- read.table(file = "UCI HAR Dataset/train/y_train.txt", sep = "",
													 stringsAsFactors = FALSE)
train_subjects <- read.table(file = "UCI HAR Dataset/train/subject_train.txt",
														 sep = "", stringsAsFactors = FALSE)

# Read the test set and, subjects labels
test <- read.table(file = "UCI HAR Dataset/test/X_test.txt", sep = "",
									 stringsAsFactors = FALSE)
test_labels <- read.table(file = "UCI HAR Dataset/test/y_test.txt", sep = "",
													stringsAsFactors = FALSE)
test_subjects <- read.table(file = "UCI HAR Dataset/test/subject_test.txt",
														sep = "", stringsAsFactors = FALSE)

# Read the feature labels (dataset header or column names)
header <- read.table(file = "UCI HAR Dataset/features.txt",
										 stringsAsFactors = FALSE)
names(header) <- c("row", "feature")

# Fix the feature names so they are valid names in R
header$name <- make.names(names = header$feature, unique = TRUE)

# Read the activity labels
activities <- read.table(file = "UCI HAR Dataset/activity_labels.txt", sep = "",
												 stringsAsFactors = FALSE)


#*-----------------------------------------------------------------------------*
# Label the features with column names and subject/activity
#*-----------------------------------------------------------------------------*

# Fix column names on the labels and subjects
names(train_labels) <- "class"
names(train_subjects) <- "subject_id"
names(test_labels) <- "class"
names(test_subjects) <- "subject_id"

# Fix column names on the activity labels
names(activities) <- c("class", "activity")

# Add column names to the feature datasets
names(train) <- header$name
names(test) <- header$name


#*-----------------------------------------------------------------------------*
# Keep only features of interest
#*-----------------------------------------------------------------------------*

# Keep only "mean" and "std" columns
train <- train[, grepl(pattern = "(mean[.])|(std)", x = names(train))]

test <- test[, grepl(pattern = "(mean[.])|(std)", x = names(test))]


#*-----------------------------------------------------------------------------*
# Bind the training and testing datasets and their labels
#*-----------------------------------------------------------------------------*

# Bind labels to datasets (and label each dataset)
train <- cbind(row = seq(1, nrow(train)), set = "train", train_subjects,
							 train_labels, train, stringsAsFactors = FALSE)
test <- cbind(row = seq(1, nrow(test)), set = "test", test_subjects,
							test_labels, test, stringsAsFactors = FALSE)

# Label the activities
train <- merge(x = activities, y = train)
test <- merge(x = activities, y = test)

# Bind the datasets
tidy_data <- rbind(train, test)

# Recover ordering and drop unused variables
tidy_data <- tidy_data[order(tidy_data$set, -tidy_data$row, decreasing = TRUE),
											 -c(1, 3)]
row.names(tidy_data) <- seq(1, nrow(tidy_data))


#*-----------------------------------------------------------------------------*
# Fix variable names
#*-----------------------------------------------------------------------------*

# Use only the names
tidy_names <- names(tidy_data)

# Remove dots (placeholders for invalid characters)
tidy_names <- gsub(pattern = "[.]+", replacement = "_", x = tidy_names)

# Remove trailing underscores
tidy_names <- sub(pattern = "[^[:alpha:]]*$", replacement = "", x = tidy_names)

# Separate words (starting in uppercase letters)
tidy_names <- gsub(pattern = "([A-W])", replacement = "_\\1", x = tidy_names)

# Use all lowercase names
tidy_names <- tolower(tidy_names)

# Expand some abbreviations
tidy_names <- gsub("^t_", "time_", tidy_names)
tidy_names <- gsub("acc_", "accelerometer_", tidy_names)
tidy_names <- gsub("_std", "_stdev", tidy_names)
tidy_names <- gsub("gyro_", "gyroscope_", tidy_names)
tidy_names <- gsub("mag_", "magnetometer_", tidy_names)
tidy_names <- gsub("f_", "frequency_", tidy_names)

# Rename the tidy dataset
names(tidy_data) <- tidy_names
