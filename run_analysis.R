##This is a script for the programming assignment in Getting and Cleaning Data #7.
##
##
	run_analysis<-function(){
##
##The function tarts here.  No input s needed.  This allows you to source the file and run it.
##
## This is the part that reads in the information.
## Note that you must use the start directory on your system
## specified in the README.md file.
##
		testdirectory<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test"
		trainingdirectory<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train"
		basedirectory<-"getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset"
##
## Do the actual reads.  Test first, then training.
##
		filename<-paste(testdirectory,"/subject_test.txt",sep="")
		subjecttest<-read.table(filename)
		filename<-paste(testdirectory,"/X_test.txt",sep="")
		Xtest<-read.table(filename)
		filename<-paste(testdirectory,"/y_test.txt",sep="")
		ytest<-read.table(filename)
##
		filename<-paste(trainingdirectory,"/subject_train.txt",sep="")
		subjecttrain<-read.table(filename)
		filename<-paste(trainingdirectory,"/X_train.txt",sep="")
		Xtrain<-read.table(filename)
		filename<-paste(trainingdirectory,"/y_train.txt",sep="")
		ytrain<-read.table(filename)
##
## Now the activity lables.  I am doing all reads at onec.
##
		filename<-paste(basedirectory,"/activity_labels.txt",sep="")
		activity_labels<-read.table(filename)
##
## Now do the merge.
##
		subjectmerged<-rbind(subjecttest,subjecttrain)
		Xmerged<-rbind(Xtest,Xtrain)
		ymerged<-rbind(ytest,ytrain)
##
## The merged data set currently has all of the variables, and no descriptive na,es.
## The fast way to extract and get descriptive variable names it to pull each relevant
## column out and place it into a properly named vector.
## I can replace the numbers with descriptive activity names, and create a data frame,
## giving the first new data set.
##
##First the extracted vectors.  There may be a slike way to to do this.
## However, you have to find every column of interest and attach it to a vector
## with the right label anyway.  I am taking the brute force approach.
## stdev means standard deviation
##
		timeBodyAcceleration_mean_x<-Xmerged[,1]
		timeBodyAcceleration_mean_y<-Xmerged[,2]
		timeBodyAcceleration_mean_z<-Xmerged[,3]
		timeBodyAcceleration_stdev_x<-Xmerged[,4]
		timeBodyAcceleration_stdev_y<-Xmerged[,5]
		timeBodyAcceleration_stdev_z<-Xmerged[,6]
		timeGravityAcceleration_mean_x<-Xmerged[,41]
		timeGravityAcceleration_mean_y<-Xmerged[,42]
		timeGravityAcceleration_mean_z<-Xmerged[,43]
		timeGravityAcceleration_stdev_x<-Xmerged[,44]
		timeGravityAcceleration_stdev_y<-Xmerged[,45]
		timeGravityAcceleration_stdev_z<-Xmerged[,46]
		timeBodyAccelerationJerk_mean_x<-Xmerged[,81]
		timeBodyAccelerationJerk_mean_y<-Xmerged[,82]
		timeBodyAccelerationJerk_mean_z<-Xmerged[,83]
		timeBodyAccelerationJerk_stdev_x<-Xmerged[,84]
		timeBodyAccelerationJerk_stdev_y<-Xmerged[,85]
		timeBodyAccelerationJerk_stdev_z<-Xmerged[,86]
		timeBodyGyroscopicMotion_mean_x<-Xmerged[,121]
		timeBodyGyroscopicMotion_mean_y<-Xmerged[,122]
		timeBodyGyroscopicMotion_mean_z<-Xmerged[,123]
		timeBodyGyroscopicMotion_stdev_x<-Xmerged[,124]
		timeBodyGyroscopicMotion_stdev_y<-Xmerged[,125]
		timeBodyGyroscopicMotion_stdev_z<-Xmerged[,126]
		timeBodyGyroscopicMotionJerk_mean_x<-Xmerged[,161]
		timeBodyGyroscopicMotionJerk_mean_y<-Xmerged[,162]
		timeBodyGyroscopicMotionJerk_mean_z<-Xmerged[,163]
		timeBodyGyroscopicMotionJerk_stdev_x<-Xmerged[,164]
		timeBodyGyroscopicMotionJerk_stdev_y<-Xmerged[,165]
		timeBodyGyroscopicMotionJerk_stdev_z<-Xmerged[,166]
		timeBodyAccelerationMagnetic_mean<-Xmerged[,201]
		timeBodyAccelerationMagnetic_stdev<-Xmerged[,202]
		timeGravityAccelerationMagnetic_mean<-Xmerged[,214]
		timeGravityAccelerationMagnetic_stdev<-Xmerged[,215]
		timeBodyAccelerationJerkMagnetic_mean<-Xmerged[,227]
		timeBodyAccelerationJerkMagnetic_stdev<-Xmerged[,228]
		timeBodyGyroscopicMotionMagnetic_mean<-Xmerged[,240]
		timeBodyGyroscopicMotionMagnetic_stdev<-Xmerged[,241]
		timeBodyGyroscopicMotionJerkMagnetic_mean<-Xmerged[,253]
		timeBodyGyroscopicMotionJerkMagnetic_stdev<-Xmerged[,254]
		freqBodyAcceleration_mean_x<-Xmerged[,266]
		freqBodyAcceleration_mean_y<-Xmerged[,267]
		freqBodyAcceleration_mean_z<-Xmerged[,268]
		freqBodyAcceleration_stdev_x<-Xmerged[,269]
		freqBodyAcceleration_stdev_y<-Xmerged[,270]
		freqBodyAcceleration_stdev_z<-Xmerged[,271]
		freqBodyAccelerationJerk_mean_x<-Xmerged[,345]
		freqBodyAccelerationJerk_mean_y<-Xmerged[,346]
		freqBodyAccelerationJerk_mean_z<-Xmerged[,347]
		freqBodyAccelerationJerk_stdev_x<-Xmerged[,348]
		freqBodyAccelerationJerk_stdev_y<-Xmerged[,349]
		freqBodyAccelerationJerk_stdev_z<-Xmerged[,350]
		freqBodyGyroscopicMotion_mean_x<-Xmerged[,424]
		freqBodyGyroscopicMotion_mean_y<-Xmerged[,425]
		freqBodyGyroscopicMotion_mean_z<-Xmerged[,426]
		freqBodyGyroscopicMotion_stdev_x<-Xmerged[,427]
		freqBodyGyroscopicMotion_stdev_y<-Xmerged[,428]
		freqBodyGyroscopicMotion_stdev_z<-Xmerged[,429]
		freqBodyAccelerationMagnetic_mean<-Xmerged[,503]
		freqBodyAccelerationMagnetic_stdev<-Xmerged[,504]
		freqBodyAccelerationJerkMagnetic_mean<-Xmerged[,516]
		freqBodyAccelerationJerkMagnetic_stdev<-Xmerged[,517]
		freqBodyGyroscopicMotionMagnetic_mean<-Xmerged[,529]
		freqBodyGyroscopicMotionMagnetic_stdev<-Xmerged[,530]
		freqBodyGyroscopicMotionJerkMagnetic_mean<-Xmerged[,542]
		freqBodyGyroscopicMotionJerkMagnetic_stdev<-Xmerged[,543]
##
## Now to create the activity vector.  Activity labels are in ymerged.
##
		activity<-character()
		p<-dim(ymerged)
		for(iloop in 1:p[1]){
			for (jloop in 1:6){
				if(ymerged[iloop,1]==activity_labels[jloop,1]){
					activity[iloop]<-as.character(activity_labels[jloop,2])
				}
			}
		}
##
## For general tidiness.  And it comes in handy to have this numeric.
##
		subject<-as.numeric(subjectmerged[,1])
##
## Now make the first dataset.
##
		first_dataset<-data.frame(subject,activity,
		timeBodyAcceleration_mean_x,
		timeBodyAcceleration_mean_y,
		timeBodyAcceleration_mean_z,
		timeBodyAcceleration_stdev_x,
		timeBodyAcceleration_stdev_y,
		timeBodyAcceleration_stdev_z,
		timeGravityAcceleration_mean_x,
		timeGravityAcceleration_mean_y,
		timeGravityAcceleration_mean_z,
		timeGravityAcceleration_stdev_x,
		timeGravityAcceleration_stdev_y,
		timeGravityAcceleration_stdev_z,
		timeBodyAccelerationJerk_mean_x,
		timeBodyAccelerationJerk_mean_y,
		timeBodyAccelerationJerk_mean_z,
		timeBodyAccelerationJerk_stdev_x,
		timeBodyAccelerationJerk_stdev_y,
		timeBodyAccelerationJerk_stdev_z,
		timeBodyGyroscopicMotion_mean_x,
		timeBodyGyroscopicMotion_mean_y,
		timeBodyGyroscopicMotion_mean_z,
		timeBodyGyroscopicMotion_stdev_x,
		timeBodyGyroscopicMotion_stdev_y,
		timeBodyGyroscopicMotion_stdev_z,
		timeBodyGyroscopicMotionJerk_mean_x,
		timeBodyGyroscopicMotionJerk_mean_y,
		timeBodyGyroscopicMotionJerk_mean_z,
		timeBodyGyroscopicMotionJerk_stdev_x,
		timeBodyGyroscopicMotionJerk_stdev_y,
		timeBodyGyroscopicMotionJerk_stdev_z,
		timeBodyAccelerationMagnetic_mean,
		timeBodyAccelerationMagnetic_stdev,
		timeGravityAccelerationMagnetic_mean,
		timeGravityAccelerationMagnetic_stdev,
		timeBodyAccelerationJerkMagnetic_mean,
		timeBodyAccelerationJerkMagnetic_stdev,
		timeBodyGyroscopicMotionMagnetic_mean,
		timeBodyGyroscopicMotionMagnetic_stdev,
		timeBodyGyroscopicMotionJerkMagnetic_mean,
		timeBodyGyroscopicMotionJerkMagnetic_stdev,
		freqBodyAcceleration_mean_x,
		freqBodyAcceleration_mean_y,
		freqBodyAcceleration_mean_z,
		freqBodyAcceleration_stdev_x,
		freqBodyAcceleration_stdev_y,
		freqBodyAcceleration_stdev_z,
		freqBodyAccelerationJerk_mean_x,
		freqBodyAccelerationJerk_mean_y,
		freqBodyAccelerationJerk_mean_z,
		freqBodyAccelerationJerk_stdev_x,
		freqBodyAccelerationJerk_stdev_y,
		freqBodyAccelerationJerk_stdev_z,
		freqBodyGyroscopicMotion_mean_x,
		freqBodyGyroscopicMotion_mean_y,
		freqBodyGyroscopicMotion_mean_z,
		freqBodyGyroscopicMotion_stdev_x,
		freqBodyGyroscopicMotion_stdev_y,
		freqBodyGyroscopicMotion_stdev_z,
		freqBodyAccelerationMagnetic_mean,
		freqBodyAccelerationMagnetic_stdev,
		freqBodyAccelerationJerkMagnetic_mean,
		freqBodyAccelerationJerkMagnetic_stdev,
		freqBodyGyroscopicMotionMagnetic_mean,
		freqBodyGyroscopicMotionMagnetic_stdev,
		freqBodyGyroscopicMotionJerkMagnetic_mean,
		freqBodyGyroscopicMotionJerkMagnetic_stdev)
##
## Sort the dataset for tidiness.
##
		first_dataset_sorted<-first_dataset[order(subject,activity),]
##
## Sort the activity labels.
##
		activity_labels_ordered<-activity_labels[order(activity_labels[,2]),]
##
## Create a set of column names in preparation for creating a new data frame.
##
		name_vector<-names(first_dataset_sorted)
		new_name_vector<-character()
		new_name_vector<-length(68)
		new_name_vector[1]<-name_vector[1]
		new_name_vector[2]<-name_vector[2]
		for(loop in 3:68){
			new_name_vector[loop]<-paste("mean_of_",name_vector[loop],sep="")
		}
##
## Initialize some stuff.
##
		out_subject<-numeric()
		out_subect<-length(180)
		out_activity<-character()
		out_activity<-length(180)
		out_data<-matrix(,nrow=180,ncol=66,dimnames=list(c(),new_name_vector[3:68]))
		row_index<-0
##
## Now create the output data. First fill in the pieces.
##
		for(iloop in 1:30){
			for(jloop in 1:6){
				row_index<-row_index+1
				out_subject[row_index]<-iloop
				out_activity[row_index]<-as.character(activity_labels_ordered[jloop,2])
##
##This makes the subset of interest.
##
				submatrix<-first_dataset_sorted[(subject==iloop)&(activity_labels_ordered[jloop,2]==activity),]
				for(kloop in 1:66){
					klov<-kloop+2
##
## take the mean.
##
					out_data[row_index,kloop]<-mean(submatrix[,klov])
				}
			}
		}
##
## Create a data frame for the tidy data.
##
		mat_subject<-matrix(out_subject, nrow=180, ncol=1, dimnames=list(c(),new_name_vector[1]))
		mat_activity<-matrix(out_activity,nrow=180,ncol=1, dimnames=list(c(),new_name_vector[2]))
		tidy_data<-data.frame(cbind(mat_subject,mat_activity,out_data))
##
## Return the tidy data set as the final step.
##		
		tidy_data		
	}