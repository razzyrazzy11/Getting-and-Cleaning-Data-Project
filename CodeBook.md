# Getting and Cleaning Data - Course Project

## Transformations

The original data was taken from the UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set, read and converted with the following steps being carried out:

1. Merging the training and the test data sets by columns to then create a singular data set using rbind.

2. Extract the measurements on the mean and standard deviation for each measurement using .select and grep accordingly.

3. Assign descriptive activity names to name the activities in the data set.

4. Appropriately label the data set with variable names using gsub and names.

5. From the data in 4, create an independent tidy data set with the average of each variable for each activity and each subject.

## Variables

## The Data
