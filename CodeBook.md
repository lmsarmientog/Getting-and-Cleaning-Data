# CODEBOOK

## Study: Human Activity Recognition Using Smartphones Dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Variables

The initial data set contained 561 variables, but after selecting the variables which contain mean and standar deviation and add the activity and subject the total number of variables is 81.  

 [1] "activity"                     "subject"                      "tBodyAccmeanX"               
 [4] "tBodyAccmeanY"                "tBodyAccmeanZ"                "tBodyAccstdX"                
 [7] "tBodyAccstdY"                 "tBodyAccstdZ"                 "tGravityAccmeanX"            
[10] "tGravityAccmeanY"             "tGravityAccmeanZ"             "tGravityAccstdX"             
[13] "tGravityAccstdY"              "tGravityAccstdZ"              "tBodyAccJerkmeanX"           
[16] "tBodyAccJerkmeanY"            "tBodyAccJerkmeanZ"            "tBodyAccJerkstdX"            
[19] "tBodyAccJerkstdY"             "tBodyAccJerkstdZ"             "tBodyGyromeanX"              
[22] "tBodyGyromeanY"               "tBodyGyromeanZ"               "tBodyGyrostdX"               
[25] "tBodyGyrostdY"                "tBodyGyrostdZ"                "tBodyGyroJerkmeanX"          
[28] "tBodyGyroJerkmeanY"           "tBodyGyroJerkmeanZ"           "tBodyGyroJerkstdX"           
[31] "tBodyGyroJerkstdY"            "tBodyGyroJerkstdZ"            "tBodyAccMagmean"             
[34] "tBodyAccMagstd"               "tGravityAccMagmean"           "tGravityAccMagstd"           
[37] "tBodyAccJerkMagmean"          "tBodyAccJerkMagstd"           "tBodyGyroMagmean"            
[40] "tBodyGyroMagstd"              "tBodyGyroJerkMagmean"         "tBodyGyroJerkMagstd"         
[43] "fBodyAccmeanX"                "fBodyAccmeanY"                "fBodyAccmeanZ"               
[46] "fBodyAccstdX"                 "fBodyAccstdY"                 "fBodyAccstdZ"                
[49] "fBodyAccmeanFreqX"            "fBodyAccmeanFreqY"            "fBodyAccmeanFreqZ"           
[52] "fBodyAccJerkmeanX"            "fBodyAccJerkmeanY"            "fBodyAccJerkmeanZ"           
[55] "fBodyAccJerkstdX"             "fBodyAccJerkstdY"             "fBodyAccJerkstdZ"            
[58] "fBodyAccJerkmeanFreqX"        "fBodyAccJerkmeanFreqY"        "fBodyAccJerkmeanFreqZ"       
[61] "fBodyGyromeanX"               "fBodyGyromeanY"               "fBodyGyromeanZ"              
[64] "fBodyGyrostdX"                "fBodyGyrostdY"                "fBodyGyrostdZ"               
[67] "fBodyGyromeanFreqX"           "fBodyGyromeanFreqY"           "fBodyGyromeanFreqZ"          
[70] "fBodyAccMagmean"              "fBodyAccMagstd"               "fBodyAccMagmeanFreq"         
[73] "fBodyBodyAccJerkMagmean"      "fBodyBodyAccJerkMagstd"       "fBodyBodyAccJerkMagmeanFreq" 
[76] "fBodyBodyGyroMagmean"         "fBodyBodyGyroMagstd"          "fBodyBodyGyroMagmeanFreq"    
[79] "fBodyBodyGyroJerkMagmean"     "fBodyBodyGyroJerkMagstd"      "fBodyBodyGyroJerkMagmeanFreq"

## The output

The tidydata.txt shows the average for each activity and each subject.

