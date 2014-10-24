## Set directory to R_Working_Directory
	Actlabels <- read.table("activity_labels.txt")
	Features <- read.table("features.txt")
	FeaturesInfo <- read.table("features_info.txt")

## Load and read all the Test files
	TestXF <- read.table("X_test.txt", header=F)
	TestYF <- read.table("y_test.txt", header=F)
	TestSubjectF <- read.table("subject_test.txt", header=F)

## Extract required columns (mean and standard deviation)
	TestXF[430:561] <- list(NULL)
	TestXF[351:423] <- list(NULL)
	TestXF[272:344] <- list(NULL)
	TestXF[167:265] <- list(NULL)
	TestXF[127:160] <- list(NULL)
	TestXF[87:120] <- list(NULL)
	TestXF[47:80] <- list(NULL)
	TestXF[7:40] <- list(NULL)	

## Change column names
	colnames(TestXF)[1] <- "TimeBodyAccelerometerMeanX"
	colnames(TestXF)[2] <- "TimeBodyAccelerometerMeanY"
	colnames(TestXF)[3] <- "TimeBodyAccelerometerMeanZ"
	colnames(TestXF)[4] <- "TimeBodyAccelerometerSDX"
	colnames(TestXF)[5] <- "TimeBodyAccelerometerSDY"
	colnames(TestXF)[6] <- "TimeBodyAccelerometerSDZ"

	colnames(TestXF)[7] <- "TimeGravityAccelerometerMeanX"
	colnames(TestXF)[8] <- "TimeGravityAccelerometerMeanY"
	colnames(TestXF)[9] <- "TimeGravityAccelerometerMeanZ"
	colnames(TestXF)[10] <- "TimeGravityAccelerometerSDX"
	colnames(TestXF)[11] <- "TimeGravityAccelerometerSDY"
	colnames(TestXF)[12] <- "TimeGravityAccelerometerSDZ"

	colnames(TestXF)[13] <- "TimeBodyAccelerometerJerkMeanX"
	colnames(TestXF)[14] <- "TimeBodyAccelerometerJerkMeanY"
	colnames(TestXF)[15] <- "TimeBodyAccelerometerJerkMeanZ"
	colnames(TestXF)[16] <- "TimeBodyAccelerometerJerkSDX"
	colnames(TestXF)[17] <- "TimeBodyAccelerometerJerkSDY"
	colnames(TestXF)[18] <- "TimeBodyAccelerometerJerkSDZ"

	colnames(TestXF)[19] <- "TimeBodyGyroscopeMeanX"
	colnames(TestXF)[20] <- "TimeBodyGyroscopeMeanY"
	colnames(TestXF)[21] <- "TimeBodyGyroscopeMeanZ"
	colnames(TestXF)[22] <- "TimeBodyGyroscopeSDX"
	colnames(TestXF)[23] <- "TimeBodyGyroscopeSDY"
	colnames(TestXF)[24] <- "TimeBodyGyroscopeSDZ"

	colnames(TestXF)[25] <- "TimeBodyGyroscopeJerkMeanX"
	colnames(TestXF)[26] <- "TimeBodyGyroscopeJerkMeanY"
	colnames(TestXF)[27] <- "TimeBodyGyroscopeJerkMeanZ"
	colnames(TestXF)[28] <- "TimeBodyGyroscopeJerkSDX"
	colnames(TestXF)[29] <- "TimeBodyGyroscopeJerkSDY"
	colnames(TestXF)[30] <- "TimeBodyGyroscopeJerkSDZ"

	colnames(TestXF)[31] <- "FreqBodyAccelerometerMeanX"
	colnames(TestXF)[32] <- "FreqBodyAccelerometerMeanY"
	colnames(TestXF)[33] <- "FreqBodyAccelerometerMeanZ"
	colnames(TestXF)[34] <- "FreqBodyAccelerometerSDX"
	colnames(TestXF)[35] <- "FreqBodyAccelerometerSDY"
	colnames(TestXF)[36] <- "FreqBodyAccelerometerSDZ"

	colnames(TestXF)[37] <- "FreqBodyAccelerometerJerkMeanX"
	colnames(TestXF)[38] <- "FreqBodyAccelerometerJerkMeanY"
	colnames(TestXF)[39] <- "FreqBodyAccelerometerJerkMeanZ"
	colnames(TestXF)[40] <- "FreqBodyAccelerometerJerkSDX"
	colnames(TestXF)[41] <- "FreqBodyAccelerometerJerkSDY"
	colnames(TestXF)[42] <- "FreqBodyAccelerometerJerkSDZ"

	colnames(TestXF)[43] <- "FreqBodyGyroscopeMeanX"
	colnames(TestXF)[44] <- "FreqBodyGyroscopeMeanY"
	colnames(TestXF)[45] <- "FreqBodyGyroscopeMeanZ"
	colnames(TestXF)[46] <- "FreqBodyGyroscopeSDX"
	colnames(TestXF)[47] <- "FreqBodyGyroscopeSDY"
	colnames(TestXF)[48] <- "FreqBodyGyroscopeSDZ"

	colnames(TestYF)[1] <- "Activity"
	colnames(TestSubjectF)[1] <- "Subject"

## Add column variable
	TestXF$ID <- c(1:2947)
	TestYF$ID <- c(1:2947)
	TestSubjectF$ID <- c(1:2947)

## Merge all the Test files and add DataNature variable
	TestXYF = merge(TestXF, TestYF, all=T)
	TestCombF = merge(TestXYF, TestSubjectF, all=T)
	TestCombF$DataNature <- c("Test")



## Load and read all the Train files
	TrainXF <- read.table("X_train.txt", header=F)
	TrainYF <- read.table("y_train.txt", header=F)
	TrainSubjectF <- read.table("subject_train.txt", header=F)

## Extract required columns (mean and standard deviation)
	TrainXF[430:561] <- list(NULL)
	TrainXF[351:423] <- list(NULL)
	TrainXF[272:344] <- list(NULL)
	TrainXF[167:265] <- list(NULL)
	TrainXF[127:160] <- list(NULL)
	TrainXF[87:120] <- list(NULL)
	TrainXF[47:80] <- list(NULL)
	TrainXF[7:40] <- list(NULL)	

## Change column names
	colnames(TrainXF)[1] <- "TimeBodyAccelerometerMeanX"
	colnames(TrainXF)[2] <- "TimeBodyAccelerometerMeanY"
	colnames(TrainXF)[3] <- "TimeBodyAccelerometerMeanZ"
	colnames(TrainXF)[4] <- "TimeBodyAccelerometerSDX"
	colnames(TrainXF)[5] <- "TimeBodyAccelerometerSDY"
	colnames(TrainXF)[6] <- "TimeBodyAccelerometerSDZ"

	colnames(TrainXF)[7] <- "TimeGravityAccelerometerMeanX"
	colnames(TrainXF)[8] <- "TimeGravityAccelerometerMeanY"
	colnames(TrainXF)[9] <- "TimeGravityAccelerometerMeanZ"
	colnames(TrainXF)[10] <- "TimeGravityAccelerometerSDX"
	colnames(TrainXF)[11] <- "TimeGravityAccelerometerSDY"
	colnames(TrainXF)[12] <- "TimeGravityAccelerometerSDZ"

	colnames(TrainXF)[13] <- "TimeBodyAccelerometerJerkMeanX"
	colnames(TrainXF)[14] <- "TimeBodyAccelerometerJerkMeanY"
	colnames(TrainXF)[15] <- "TimeBodyAccelerometerJerkMeanZ"
	colnames(TrainXF)[16] <- "TimeBodyAccelerometerJerkSDX"
	colnames(TrainXF)[17] <- "TimeBodyAccelerometerJerkSDY"
	colnames(TrainXF)[18] <- "TimeBodyAccelerometerJerkSDZ"

	colnames(TrainXF)[19] <- "TimeBodyGyroscopeMeanX"
	colnames(TrainXF)[20] <- "TimeBodyGyroscopeMeanY"
	colnames(TrainXF)[21] <- "TimeBodyGyroscopeMeanZ"
	colnames(TrainXF)[22] <- "TimeBodyGyroscopeSDX"
	colnames(TrainXF)[23] <- "TimeBodyGyroscopeSDY"
	colnames(TrainXF)[24] <- "TimeBodyGyroscopeSDZ"

	colnames(TrainXF)[25] <- "TimeBodyGyroscopeJerkMeanX"
	colnames(TrainXF)[26] <- "TimeBodyGyroscopeJerkMeanY"
	colnames(TrainXF)[27] <- "TimeBodyGyroscopeJerkMeanZ"
	colnames(TrainXF)[28] <- "TimeBodyGyroscopeJerkSDX"
	colnames(TrainXF)[29] <- "TimeBodyGyroscopeJerkSDY"
	colnames(TrainXF)[30] <- "TimeBodyGyroscopeJerkSDZ"

	colnames(TrainXF)[31] <- "FreqBodyAccelerometerMeanX"
	colnames(TrainXF)[32] <- "FreqBodyAccelerometerMeanY"
	colnames(TrainXF)[33] <- "FreqBodyAccelerometerMeanZ"
	colnames(TrainXF)[34] <- "FreqBodyAccelerometerSDX"
	colnames(TrainXF)[35] <- "FreqBodyAccelerometerSDY"
	colnames(TrainXF)[36] <- "FreqBodyAccelerometerSDZ"

	colnames(TrainXF)[37] <- "FreqBodyAccelerometerJerkMeanX"
	colnames(TrainXF)[38] <- "FreqBodyAccelerometerJerkMeanY"
	colnames(TrainXF)[39] <- "FreqBodyAccelerometerJerkMeanZ"
	colnames(TrainXF)[40] <- "FreqBodyAccelerometerJerkSDX"
	colnames(TrainXF)[41] <- "FreqBodyAccelerometerJerkSDY"
	colnames(TrainXF)[42] <- "FreqBodyAccelerometerJerkSDZ"

	colnames(TrainXF)[43] <- "FreqBodyGyroscopeMeanX"
	colnames(TrainXF)[44] <- "FreqBodyGyroscopeMeanY"
	colnames(TrainXF)[45] <- "FreqBodyGyroscopeMeanZ"
	colnames(TrainXF)[46] <- "FreqBodyGyroscopeSDX"
	colnames(TrainXF)[47] <- "FreqBodyGyroscopeSDY"
	colnames(TrainXF)[48] <- "FreqBodyGyroscopeSDZ"

	colnames(TrainYF)[1] <- "Activity"
	colnames(TrainSubjectF)[1] <- "Subject"

## Add column variable
	TrainXF$ID <- c(2948:10299)
	TrainYF$ID <- c(2948:10299)
	TrainSubjectF$ID <- c(2948:10299)

## Merge all the Train files and add DataNature variable
	TrainXYF = merge(TrainXF, TrainYF, all=T)
	TrainCombF = merge(TrainXYF, TrainSubjectF, all=T)
	TrainCombF$DataNature <- c("Train")



## Merge All the files. Name the Activities.
	TestTrainCombFF <- rbind(TestCombF, TrainCombF)
	TestTrainCombFF$Activity <- replace(TestTrainCombFF$Activity, TestTrainCombFF$Activity == "1", "Walking")
	TestTrainCombFF$Activity <- replace(TestTrainCombFF$Activity, TestTrainCombFF$Activity == "2", "Walking Upstairs")
	TestTrainCombFF$Activity <- replace(TestTrainCombFF$Activity, TestTrainCombFF$Activity == "3", "Walking Downstairs")
	TestTrainCombFF$Activity <- replace(TestTrainCombFF$Activity, TestTrainCombFF$Activity == "4", "Sitting")
	TestTrainCombFF$Activity <- replace(TestTrainCombFF$Activity, TestTrainCombFF$Activity == "5", "Standing")
	TestTrainCombFF$Activity <- replace(TestTrainCombFF$Activity, TestTrainCombFF$Activity == "6", "Laying")


## Calculate the mean of each variable.
	TestTrainComb2FF <- aggregate(cbind(TimeBodyAccelerometerMeanX, TimeBodyAccelerometerMeanY, TimeBodyAccelerometerMeanZ,
				TimeBodyAccelerometerSDX, TimeBodyAccelerometerSDY, TimeBodyAccelerometerSDZ,
				TimeGravityAccelerometerMeanX, TimeGravityAccelerometerMeanY, TimeGravityAccelerometerMeanZ,
				TimeGravityAccelerometerSDX, TimeGravityAccelerometerSDY, TimeGravityAccelerometerSDZ,
				TimeBodyAccelerometerJerkMeanX, TimeBodyAccelerometerJerkMeanY, TimeBodyAccelerometerJerkMeanZ,
				TimeBodyAccelerometerJerkSDX, TimeBodyAccelerometerJerkSDY, TimeBodyAccelerometerJerkSDZ,
				TimeBodyGyroscopeMeanX, TimeBodyGyroscopeMeanY, TimeBodyGyroscopeMeanZ,
				TimeBodyGyroscopeSDX, TimeBodyGyroscopeSDY, TimeBodyGyroscopeSDZ,
				TimeBodyGyroscopeJerkMeanX, TimeBodyGyroscopeJerkMeanY, TimeBodyGyroscopeJerkMeanZ,
				TimeBodyGyroscopeJerkSDX, TimeBodyGyroscopeJerkSDY, TimeBodyGyroscopeJerkSDZ,
				FreqBodyAccelerometerMeanX, FreqBodyAccelerometerMeanY, FreqBodyAccelerometerMeanZ,
				FreqBodyAccelerometerSDX, FreqBodyAccelerometerSDY, FreqBodyAccelerometerSDZ,
				FreqBodyAccelerometerJerkMeanX, FreqBodyAccelerometerJerkMeanY, FreqBodyAccelerometerJerkMeanZ,
				FreqBodyAccelerometerJerkSDX, FreqBodyAccelerometerJerkSDY, FreqBodyAccelerometerJerkSDZ,
				FreqBodyGyroscopeMeanX, FreqBodyGyroscopeMeanY, FreqBodyGyroscopeMeanZ,
				FreqBodyGyroscopeSDX, FreqBodyGyroscopeSDY, FreqBodyGyroscopeSDZ
					) ~ Activity + Subject, data = TestTrainCombFF, mean)



## View the second combined file. Save it.
	View(TestTrainComb2FF)
	write.table(TestTrainComb2FF, file = "TestTrainComb2FF.txt", row.names = FALSE)

