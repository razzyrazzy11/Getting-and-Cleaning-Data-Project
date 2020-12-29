# Getting and Cleaning Data - Course Project

## Transformations

The original data was taken from the UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set, read and converted with the following steps being carried out:

1. Merging the training and the test data sets by columns to then create a singular data set using rbind.

2. Extract the measurements on the mean and standard deviation for each measurement using .select and grep accordingly.

3. Assign descriptive activity names to name the activities in the data set.

4. Appropriately label the data set with variable names using gsub and names.

5. From the data in 4, create an independent tidy data set with the average of each variable for each activity and each subject.

## Variables

Overall, the variables represent the calculated means and standard deviations from the data set. The descriptive labels help clarify the meaning behind each one.

Using: names(data.sub)

 [1] "subject"                         "activity"                        "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
 [9] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[17] "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[21] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[29] "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[33] "tBodyAccMag-mean()"              "tBodyAccMag-std()"               "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"           "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
[41] "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"          "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[45] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
[53] "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[57] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
[65] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"               "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[69] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"              "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[77] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[81] "fBodyBodyGyroJerkMag-meanFreq()"

## The Data

A full description of the data is available from the [source](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The full data can be obtained from the following zip [file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

It is possible to get result summaries of the data using summary(data.sub):

subject        activity         tBodyAcc-mean()-X tBodyAcc-mean()-Y  tBodyAcc-mean()-Z  tBodyAcc-std()-X  tBodyAcc-std()-Y   tBodyAcc-std()-Z  tGravityAcc-mean()-X
 Min.   : 1.00   Length:10299       Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000     
 1st Qu.: 9.00   Class :character   1st Qu.: 0.2626   1st Qu.:-0.02490   1st Qu.:-0.12102   1st Qu.:-0.9924   1st Qu.:-0.97699   1st Qu.:-0.9791   1st Qu.: 0.8117     
 Median :17.00   Mode  :character   Median : 0.2772   Median :-0.01716   Median :-0.10860   Median :-0.9430   Median :-0.83503   Median :-0.8508   Median : 0.9218     
 Mean   :16.15                      Mean   : 0.2743   Mean   :-0.01774   Mean   :-0.10892   Mean   :-0.6078   Mean   :-0.51019   Mean   :-0.6131   Mean   : 0.6692     
 3rd Qu.:24.00                      3rd Qu.: 0.2884   3rd Qu.:-0.01062   3rd Qu.:-0.09759   3rd Qu.:-0.2503   3rd Qu.:-0.05734   3rd Qu.:-0.2787   3rd Qu.: 0.9547     
 Max.   :30.00                      Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000     
 tGravityAcc-mean()-Y tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y tGravityAcc-std()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z
 Min.   :-1.000000    Min.   :-1.00000     Min.   :-1.0000     Min.   :-1.0000     Min.   :-1.0000     Min.   :-1.00000      Min.   :-1.000000     Min.   :-1.000000    
 1st Qu.:-0.242943    1st Qu.:-0.11671     1st Qu.:-0.9949     1st Qu.:-0.9913     1st Qu.:-0.9866     1st Qu.: 0.06298      1st Qu.:-0.018555     1st Qu.:-0.031552    
 Median :-0.143551    Median : 0.03680     Median :-0.9819     Median :-0.9759     Median :-0.9665     Median : 0.07597      Median : 0.010753     Median :-0.001159    
 Mean   : 0.004039    Mean   : 0.09215     Mean   :-0.9652     Mean   :-0.9544     Mean   :-0.9389     Mean   : 0.07894      Mean   : 0.007948     Mean   :-0.004675    
 3rd Qu.: 0.118905    3rd Qu.: 0.21621     3rd Qu.:-0.9615     3rd Qu.:-0.9464     3rd Qu.:-0.9296     3rd Qu.: 0.09131      3rd Qu.: 0.033538     3rd Qu.: 0.024578    
 Max.   : 1.000000    Max.   : 1.00000     Max.   : 1.0000     Max.   : 1.0000     Max.   : 1.0000     Max.   : 1.00000      Max.   : 1.000000     Max.   : 1.000000    
 tBodyAccJerk-std()-X tBodyAccJerk-std()-Y tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y tBodyGyro-mean()-Z tBodyGyro-std()-X tBodyGyro-std()-Y
 Min.   :-1.0000      Min.   :-1.0000      Min.   :-1.0000      Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000  
 1st Qu.:-0.9913      1st Qu.:-0.9850      1st Qu.:-0.9892      1st Qu.:-0.04579   1st Qu.:-0.10399   1st Qu.: 0.06485   1st Qu.:-0.9872   1st Qu.:-0.9819  
 Median :-0.9513      Median :-0.9250      Median :-0.9543      Median :-0.02776   Median :-0.07477   Median : 0.08626   Median :-0.9016   Median :-0.9106  
 Mean   :-0.6398      Mean   :-0.6080      Mean   :-0.7628      Mean   :-0.03098   Mean   :-0.07472   Mean   : 0.08836   Mean   :-0.7212   Mean   :-0.6827  
 3rd Qu.:-0.2912      3rd Qu.:-0.2218      3rd Qu.:-0.5485      3rd Qu.:-0.01058   3rd Qu.:-0.05110   3rd Qu.: 0.11044   3rd Qu.:-0.4822   3rd Qu.:-0.4461  
 Max.   : 1.0000      Max.   : 1.0000      Max.   : 1.0000      Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000  
 tBodyGyro-std()-Z tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z
 Min.   :-1.0000   Min.   :-1.00000       Min.   :-1.00000       Min.   :-1.00000       Min.   :-1.0000       Min.   :-1.0000       Min.   :-1.0000      
 1st Qu.:-0.9850   1st Qu.:-0.11723       1st Qu.:-0.05868       1st Qu.:-0.07936       1st Qu.:-0.9907       1st Qu.:-0.9922       1st Qu.:-0.9926      
 Median :-0.8819   Median :-0.09824       Median :-0.04056       Median :-0.05455       Median :-0.9348       Median :-0.9548       Median :-0.9503      
 Mean   :-0.6537   Mean   :-0.09671       Mean   :-0.04232       Mean   :-0.05483       Mean   :-0.7313       Mean   :-0.7861       Mean   :-0.7399      
 3rd Qu.:-0.3379   3rd Qu.:-0.07930       3rd Qu.:-0.02521       3rd Qu.:-0.03168       3rd Qu.:-0.4865       3rd Qu.:-0.6268       3rd Qu.:-0.5097      
 Max.   : 1.0000   Max.   : 1.00000       Max.   : 1.00000       Max.   : 1.00000       Max.   : 1.0000       Max.   : 1.0000       Max.   : 1.0000      
 tBodyAccMag-mean() tBodyAccMag-std() tGravityAccMag-mean() tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std() tBodyGyroMag-mean() tBodyGyroMag-std()
 Min.   :-1.0000    Min.   :-1.0000   Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000        Min.   :-1.0000       Min.   :-1.0000     Min.   :-1.0000   
 1st Qu.:-0.9819    1st Qu.:-0.9822   1st Qu.:-0.9819       1st Qu.:-0.9822      1st Qu.:-0.9896        1st Qu.:-0.9907       1st Qu.:-0.9781     1st Qu.:-0.9775   
 Median :-0.8746    Median :-0.8437   Median :-0.8746       Median :-0.8437      Median :-0.9481        Median :-0.9288       Median :-0.8223     Median :-0.8259   
 Mean   :-0.5482    Mean   :-0.5912   Mean   :-0.5482       Mean   :-0.5912      Mean   :-0.6494        Mean   :-0.6278       Mean   :-0.6052     Mean   :-0.6625   
 3rd Qu.:-0.1201    3rd Qu.:-0.2423   3rd Qu.:-0.1201       3rd Qu.:-0.2423      3rd Qu.:-0.2956        3rd Qu.:-0.2733       3rd Qu.:-0.2454     3rd Qu.:-0.3940   
 Max.   : 1.0000    Max.   : 1.0000   Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000        Max.   : 1.0000       Max.   : 1.0000     Max.   : 1.0000   
 tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() fBodyAcc-mean()-X fBodyAcc-mean()-Y fBodyAcc-mean()-Z fBodyAcc-std()-X  fBodyAcc-std()-Y   fBodyAcc-std()-Z 
 Min.   :-1.0000         Min.   :-1.0000        Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000  
 1st Qu.:-0.9923         1st Qu.:-0.9922        1st Qu.:-0.9913   1st Qu.:-0.9792   1st Qu.:-0.9832   1st Qu.:-0.9929   1st Qu.:-0.97689   1st Qu.:-0.9780  
 Median :-0.9559         Median :-0.9403        Median :-0.9456   Median :-0.8643   Median :-0.8954   Median :-0.9416   Median :-0.83261   Median :-0.8398  
 Mean   :-0.7621         Mean   :-0.7780        Mean   :-0.6228   Mean   :-0.5375   Mean   :-0.6650   Mean   :-0.6034   Mean   :-0.52842   Mean   :-0.6179  
 3rd Qu.:-0.5499         3rd Qu.:-0.6093        3rd Qu.:-0.2646   3rd Qu.:-0.1032   3rd Qu.:-0.3662   3rd Qu.:-0.2493   3rd Qu.:-0.09216   3rd Qu.:-0.3023  
 Max.   : 1.0000         Max.   : 1.0000        Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000  
 fBodyAcc-meanFreq()-X fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z fBodyAccJerk-std()-X
 Min.   :-1.00000      Min.   :-1.000000     Min.   :-1.00000      Min.   :-1.0000       Min.   :-1.0000       Min.   :-1.0000       Min.   :-1.0000     
 1st Qu.:-0.41878      1st Qu.:-0.144772     1st Qu.:-0.13845      1st Qu.:-0.9912       1st Qu.:-0.9848       1st Qu.:-0.9873       1st Qu.:-0.9920     
 Median :-0.23825      Median : 0.004666     Median : 0.06084      Median :-0.9516       Median :-0.9257       Median :-0.9475       Median :-0.9562     
 Mean   :-0.22147      Mean   : 0.015401     Mean   : 0.04731      Mean   :-0.6567       Mean   :-0.6290       Mean   :-0.7436       Mean   :-0.6550     
 3rd Qu.:-0.02043      3rd Qu.: 0.176603     3rd Qu.: 0.24922      3rd Qu.:-0.3270       3rd Qu.:-0.2638       3rd Qu.:-0.5133       3rd Qu.:-0.3203     
 Max.   : 1.00000      Max.   : 1.000000     Max.   : 1.00000      Max.   : 1.0000       Max.   : 1.0000       Max.   : 1.0000       Max.   : 1.0000     
 fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y fBodyAccJerk-meanFreq()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y
 Min.   :-1.0000      Min.   :-1.0000      Min.   :-1.00000          Min.   :-1.000000         Min.   :-1.00000          Min.   :-1.0000    Min.   :-1.0000   
 1st Qu.:-0.9865      1st Qu.:-0.9895      1st Qu.:-0.29770          1st Qu.:-0.427951         1st Qu.:-0.33139          1st Qu.:-0.9853    1st Qu.:-0.9847   
 Median :-0.9280      Median :-0.9590      Median :-0.04544          Median :-0.236530         Median :-0.10246          Median :-0.8917    Median :-0.9197   
 Mean   :-0.6122      Mean   :-0.7809      Mean   :-0.04771          Mean   :-0.213393         Mean   :-0.12383          Mean   :-0.6721    Mean   :-0.7062   
 3rd Qu.:-0.2361      3rd Qu.:-0.5903      3rd Qu.: 0.20447          3rd Qu.: 0.008651         3rd Qu.: 0.09124          3rd Qu.:-0.3837    3rd Qu.:-0.4735   
 Max.   : 1.0000      Max.   : 1.0000      Max.   : 1.00000          Max.   : 1.000000         Max.   : 1.00000          Max.   : 1.0000    Max.   : 1.0000   
 fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y fBodyGyro-meanFreq()-Z fBodyAccMag-mean()
 Min.   :-1.0000    Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000       Min.   :-1.00000       Min.   :-1.00000       Min.   :-1.0000   
 1st Qu.:-0.9851    1st Qu.:-0.9881   1st Qu.:-0.9808   1st Qu.:-0.9862   1st Qu.:-0.27189       1st Qu.:-0.36257       1st Qu.:-0.23240       1st Qu.:-0.9847   
 Median :-0.8877    Median :-0.9053   Median :-0.9061   Median :-0.8915   Median :-0.09868       Median :-0.17298       Median :-0.05369       Median :-0.8755   
 Mean   :-0.6442    Mean   :-0.7386   Mean   :-0.6742   Mean   :-0.6904   Mean   :-0.10104       Mean   :-0.17428       Mean   :-0.05139       Mean   :-0.5860   
 3rd Qu.:-0.3225    3rd Qu.:-0.5225   3rd Qu.:-0.4385   3rd Qu.:-0.4168   3rd Qu.: 0.06810       3rd Qu.: 0.01366       3rd Qu.: 0.12251       3rd Qu.:-0.2173   
 Max.   : 1.0000    Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000       Max.   : 1.00000       Max.   : 1.00000       Max.   : 1.0000   
 fBodyAccMag-std() fBodyAccMag-meanFreq() fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std() fBodyBodyAccJerkMag-meanFreq() fBodyBodyGyroMag-mean()
 Min.   :-1.0000   Min.   :-1.00000       Min.   :-1.0000            Min.   :-1.0000           Min.   :-1.000000              Min.   :-1.0000        
 1st Qu.:-0.9829   1st Qu.:-0.09663       1st Qu.:-0.9898            1st Qu.:-0.9907           1st Qu.:-0.002959              1st Qu.:-0.9825        
 Median :-0.8547   Median : 0.07026       Median :-0.9290            Median :-0.9255           Median : 0.164180              Median :-0.8756        
 Mean   :-0.6595   Mean   : 0.07688       Mean   :-0.6208            Mean   :-0.6401           Mean   : 0.173220              Mean   :-0.6974        
 3rd Qu.:-0.3823   3rd Qu.: 0.24495       3rd Qu.:-0.2600            3rd Qu.:-0.3082           3rd Qu.: 0.357307              3rd Qu.:-0.4514        
 Max.   : 1.0000   Max.   : 1.00000       Max.   : 1.0000            Max.   : 1.0000           Max.   : 1.000000              Max.   : 1.0000        
 fBodyBodyGyroMag-std() fBodyBodyGyroMag-meanFreq() fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std() fBodyBodyGyroJerkMag-meanFreq()
 Min.   :-1.0000        Min.   :-1.00000            Min.   :-1.0000             Min.   :-1.0000            Min.   :-1.00000               
 1st Qu.:-0.9781        1st Qu.:-0.23436            1st Qu.:-0.9921             1st Qu.:-0.9926            1st Qu.:-0.01948               
 Median :-0.8275        Median :-0.05210            Median :-0.9453             Median :-0.9382            Median : 0.13625               
 Mean   :-0.7000        Mean   :-0.04156            Mean   :-0.7798             Mean   :-0.7922            Mean   : 0.12671               
 3rd Qu.:-0.4713        3rd Qu.: 0.15158            3rd Qu.:-0.6122             3rd Qu.:-0.6437            3rd Qu.: 0.28896               
 Max.   : 1.0000        Max.   : 1.00000            Max.   : 1.0000             Max.   : 1.0000            Max.   : 1.00000    
