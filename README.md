# Getting-and-Cleaning-Data-Project

## Project
The project uses data from the UCI Machine Learning Repository: Human Activity Recognition and Smart Phone Data. A full description of the data is available from the [source](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The full data can be obtained from the following zip [file] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## Files

### R Script: run_analysis.R
The [run_analysis.R] (https://github.com/razzyrazzy11/Getting-and-Cleaning-Data-Project/blob/master/run_analysis.R) script reads the data files and merges them into 1 data frame with meaningful names given to the important variables. The script reduces the variables down to a subset which includes means and standard deviations.

### Tidy Data: data_tidy.txt
Using the script, a second independent tidy data set [data_tidy.txt](https://github.com/razzyrazzy11/Getting-and-Cleaning-Data-Project/blob/master/data_tidy.txt) with the average of each variable for each activity and subject is created. The tidy data conforms to the tidy data principles previously covered in the course.

### CodeBook: CodeBook.md
The CodeBook file [CodeBook.md](https://github.com/razzyrazzy11/Getting-and-Cleaning-Data-Project/blob/master/CodeBook.md) describes the transformations, variables and the data used to clean up the data in the project.
