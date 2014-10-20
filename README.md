Smartphones-and-Human-Activities
================================

Getting and Cleaning Data Course Project


Experiments were carried out with a group of 30 volunteers (appear as 1-30 under Subject variable) within an age bracket of 19-48 years. Each person performed six activities: Walking, Walking Upstaris, Walking Downstairs, Sitting, Standing, Laying. The corresponding numbers for these 6 activities are 1, 2, 3 4 5 and 6 in the y_test.txt and y_train.txt files.


The volunteers wore a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 


Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments were video-recorded to label the data manually. 561 variables were recorded, and divided into the X_test.txt and Y_train.txt files.


The purpose of this project is to combine the test and train files. The first combined file will show the following variables, which are of interest in this project:


Time Body Accelerometer Mean X

Time Body Accelerometer Mean Y

Time Body Accelerometer Mean Z

Time Body Accelerometer SD X

Time Body Accelerometer SD Y

Time Body Accelerometer SD Z     

Time Gravity Accelerometer Mean X

Time Gravity Accelerometer Mean Y

Time Gravity Accelerometer Mean Z

Time Gravity Accelerometer SD X

Time Gravity Accelerometer SD Y

Time Gravity Accelerometer SD Z

Time Body Accelerometer Jerk Mean X

Time Body Accelerometer Jerk Mean Y

Time Body Accelerometer Jerk Mean Z

Time Body Accelerometer Jerk SD X

Time Body Accelerometer Jerk SD Y

Time Body Accelerometer Jerk SD Z

Time Body Gyroscope Mean X

Time Body Gyroscope Mean Y

Time Body Gyroscope Mean Z        

Time Body Gyroscope SD X

Time Body Gyroscope SD Y

Time Body Gyroscope SD Z

Time Body Gyroscope Jerk Mean X

Time Body Gyroscope Jerk Mean Y

Time Body Gyroscope Jerk Mean Z

Time Body Gyroscope Jerk SD X

Time Body Gyroscope Jerk SD Y

Time Body Gyroscope Jerk SD Z     


Frequency Body Accelerometer Mean X
Frequency Body Accelerometer Mean Y

Frequency Body Accelerometer Mean Z

Frequency Body Accelerometer SD X

Frequency Body Accelerometer SD Y

Frequency Body Accelerometer SD Z

Frequency Body Accelerometer Jerk Mean X

Frequency Body Accelerometer Jerk Mean Y

Frequency Body Accelerometer Jerk Mean Z

Frequency Body Accelerometer Jerk SD X

Frequency Body Accelerometer Jerk SD Y

Frequency Body Accelerometer Jerk SD Z

Frequency Body Gyroscope Mean X

Frequency Body Gyroscope Mean Y

Frequency Body Gyroscope Mean Z

Frequency Body Gyroscope SD X

Frequency Body Gyroscope SD Y

Frequency Body Gyroscope SD Z       


From the first combined file, a second file is created to show an independent tidy data set with the average (mean) of each variable for each activity and each subject.


The data analysis is done in R programming. The script for running this analysis is run_analysis.
