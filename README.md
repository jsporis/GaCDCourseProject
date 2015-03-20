# Getting and Cleaning Data Course Project - Tidy Data Set
The purpose of the R_Analysis script process is to pare down the “Human Activity Recognition Using Smartphones Dataset.” The goal is to summarize the average of each variable for both the individuals who participated in the study, and the activities that were tracked through the study.  


The raw dataset, UCI_HAR_Dataset.zip, was downloaded from the UCI Machine Learning Repository here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Included in the zip archive are a breakdown of the research and the data fields used, and will provide further insight into the Tiny Data pull.

The first step in the process was downloading and unzipping the file, then identifying the key files that would be needed for the clean up. Once that was determined, the R Process began:

1) Required the three packages that would be needed for the process.
2) Imported the main datasets.
3) Combined data and label lists by row.
4) Renamed columns in the main data and the “Subject” variables.
5) Combined three main data files.
6) Merged values for “Activity” data.
7) Renamed “Activity” column
8) Cleaned column labels to be TinyData compliant, removing non-character values. 
9) Subset the data to include only “Activity”, “Subject”, “mean”, and “standard deviation” value columns.
10) Created the summarized Tiny Data set. 

Final output includes 180 observances of these 55 variables:

1) “Subject” — Integer — Identifier of study subject. 
2) “Activity” — Character Field —Description of activities being performed during measurements. 
3 - 55) Number Fields — Various measures of bodily functions during the Activity 
"tBodyAccmeanX" "tBodyAccmeanY" "tBodyAccmeanZ" "tGravityAccmeanX" "tGravityAccmeanY" "tGravityAccmeanZ" "tBodyAccJerkmeanX" "tBodyAccJerkmeanY" "tBodyAccJerkmeanZ" "tBodyGyromeanX" "tBodyGyromeanY" "tBodyGyromeanZ" "tBodyGyroJerkmeanX" "tBodyGyroJerkmeanY" "tBodyGyroJerkmeanZ" "tBodyAccMagmean" "tGravityAccMagmean" "tBodyAccJerkMagmean" "tBodyGyroMagmean" "tBodyGyroJerkMagmean" "fBodyAccmeanX" "fBodyAccmeanY" "fBodyAccmeanZ" "fBodyAccmeanFreqX" "fBodyAccmeanFreqY" "fBodyAccmeanFreqZ" "fBodyAccJerkmeanX" "fBodyAccJerkmeanY" "fBodyAccJerkmeanZ" "fBodyAccJerkmeanFreqX" "fBodyAccJerkmeanFreqY" "fBodyAccJerkmeanFreqZ" "fBodyGyromeanX" "fBodyGyromeanY" "fBodyGyromeanZ" "fBodyGyromeanFreqX" "fBodyGyromeanFreqY" "fBodyGyromeanFreqZ" "fBodyAccMagmean" "fBodyAccMagmeanFreq" "fBodyBodyAccJerkMagmean" "fBodyBodyAccJerkMagmeanFreq" "fBodyBodyGyroMagmean" "fBodyBodyGyroMagmeanFreq" "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagmeanFreq" "angletBodyAccMeangravity" "angletBodyAccJerkMeangravityMean" "angletBodyGyroMeangravityMean" "angletBodyGyroJerkMeangravityMean" "angleXgravityMean" "angleYgravityMean" "angleZgravityMean"

