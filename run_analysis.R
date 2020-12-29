library(magrittr)
# Reading and converting data
features <- read.csv('./features.txt', header = FALSE, sep = ' ')
features <- as.character(features[,2])

data.x_train <- read.table('./train/X_train.txt')
data.y_train_activity <- read.csv('./train/y_train.txt', header = FALSE, sep = ' ')
data.subject_train <- read.csv('./train/subject_train.txt',header = FALSE, sep = ' ')

data.train <-  data.frame(data.subject_train, data.y_train_activity, data.x_train)
names(data.train) <- c(c('subject', 'activity'), features)

data.x_test <- read.table('./test/X_test.txt')
data.y_test <- read.csv('./test/y_test.txt', header = FALSE, sep = ' ')
data.subject_test <- read.csv('./test/subject_test.txt', header = FALSE, sep = ' ')

data.test <-  data.frame(data.subject_test, data.y_test, data.x_test)
names(data.test) <- c(c('subject', 'activity'), features)

# 1. Merge train and test data sets into a single data.final set
data.final <- rbind(data.train, data.test)

# 2. Extract the measurements on the mean and standard deviation for each measurement
mean_std.select <- grep('mean|std', features)
data_extract <- data.final[,c(1,2,mean_std.select + 2)]

# 3. Use descriptive activity names to name the activities in the data set
# Use activity_labels.txt to read labels for activities
activity_label <- read.table('./activity_labels.txt', header = FALSE)
activity_label <- as.character(activity_label[,2])
data_extract$activity <- activity_label[data_extract$activity]
# Use features.txt to read labels for features
feature_label <- read.table('./features.txt', header = FALSE)

# 4. Appropriately label the data set with descriptive variable names
variable_name <- names(data_extract)
variable_name <- gsub("[(][)]", "", variable_name)
variable_name <- gsub("^t", "TimeDomain_", variable_name)
variable_name <- gsub("^f", "FrequencyDomain_", variable_name)
variable_name <- gsub("Acc", "Accelerometer", variable_name)
variable_name <- gsub("Gyro", "Gyroscope", variable_name)
variable_name <- gsub("Mag", "Magnitude", variable_name)
variable_name <- gsub("-mean-", "_Mean_", variable_name)
variable_name <- gsub("-std-", "_StandardDeviation_", variable_name)
variable_name <- gsub("-", "_", variable_name)
names(data_extract) <- variable_name

# 5. From the data set in 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
data_tidyindependent <- data_extract %>% group_by(activity, subject) %>% summarise_all(list(mean))
write.table(x = data_tidyindependent, file = "data_tidy.txt", row.names = FALSE)
