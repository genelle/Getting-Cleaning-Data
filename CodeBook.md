#Codebook for Getting and Cleaning Data assignment

The following contains information on the study itself, how the data was retrieved, and how the data was analyzed.

##Study Design
The data was sourced from [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Quoted from the study's website: "Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors."


I used this data for the *Getting and Cleaning Data* Course's assignment in the Data Science Specialization  on Coursera. The objective for this assignment was to clean up the data provided by UCI and perform some calculations.

##Components of the outputted tidy.txt dataset
###Subjects
There were 30 subjects labeled 1-30 featured in this dataset

###Activities
There were 6 activities that each measurement was measured off of:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

###Variables
The following were the variables we cared about from the original dataset. The first two are indicating the subject and activity. The rest are different measurements made while the participants wore their trackers. 


subjectID

activityName

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyAccMag-mean()

tGravityAccMag-mean()

tBodyAccJerkMag-mean()

tBodyGyroMag-mean()

tBodyGyroJerkMag-mean()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-meanFreq()-X

fBodyAcc-meanFreq()-Y

fBodyAcc-meanFreq()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-meanFreq()-X

fBodyAccJerk-meanFreq()-Y

fBodyAccJerk-meanFreq()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-meanFreq()-X

fBodyGyro-meanFreq()-Y

fBodyGyro-meanFreq()-Z

fBodyAccMag-mean()

fBodyAccMag-meanFreq()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-meanFreq()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-meanFreq()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-meanFreq()

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-std()-X


tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

tBodyAccMag-std()

tGravityAccMag-std()

tBodyAccJerkMag-std()

tBodyGyroMag-std()

tBodyGyroJerkMag-std()

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

fBodyAccMag-std()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-std()
