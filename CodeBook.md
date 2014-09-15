There are four parts to this code book:
	*Description of Data Source
	*Description om Manipulation
	*Description of Tidy Data Set
	*Description of Variables

Description of Data Source:

Accelerometer and gyr0scopic motion data were collected 
while thirty subjects were performing various activities.
the raw data were massaged to provide statistical information
regarding the subjects movements.   Multiple measurements were taken
of each subject performing each activity.
These data were identified by subject and activity and stored in several
different files.

Deseription of Manipulation:

Read in the data from the files.
Merge common types of information together.
Replace the numerical activity values with text representations.
Create a data set including subject, activity, and a selection of the 
processed measurements entered.  The specific items needed are mean and
standard deviation.  There are multiple means and standard deviations because 
multiple measurements were taken for each subject and activity.
Subset the data set by subject and activity.  Take the average of every extracted
statistic.
Store the averages, identified by subject and activity as a new data set.  This
does involve taking means of means, and means of standard deviations.  The arithmetic
mean was used.

Description of Tidy Data Set:

The data set is a single data frame with 180 rows and 68 columns.
The columns are descriptively labeled as discussed below.
There are 180 combinations of subject and activity, hence 180 rows.
There are 66 measurement statistics to be averaged, providing 66 of the 
68 columns.
There is a column to label the subject, and a column to label the activity,
for a total of 68.
the function variable<-read.table("pwg_tity_data.txt",header=TRUE) will read
the data into R.

Description of Variables:

The description of the initial data set talks about x, y, and z, but gives
no information as to the orientation of this set of orthogonal axes.  They also
don't define what they mean by magnetic acceleration.  There should be more information
about which frequency component was used.  So any further description can only go so far.

The variable is associated with a column of data.  The variable name is the
column name.

Each variable is described below by the:
	* Name
	* Type and value range
	* Units
	* Definition

Name: subject
Type: An integer from 1 to 30 inclusive.
Units: None.
Definition: A unique numerical id to represent each individual.

Name: activity
Type: A character string taking one the values: LAYING, SITTING, STANDING, 
WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS.
Units: None
Definition: A description of the actions of the subject during the test.
Descriptions are from a list, with self evident meanings.


Name: mean_of_timeBodyAcceleration_mean_x
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the x-component of the body acceleration.

Name: mean_of_timeBodyAcceleration_mean_y
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the y-component of the body acceleration.


Name: mean_of_timeBodyAcceleration_mean_z
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the z-component of the body acceleration.


Name: mean_of_timeBodyAcceleration_stdev_x
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the x-component of the body acceleration.


Name: mean_of_timeBodyAcceleration_stdev_y
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the y-component of the body acceleration.


Name: mean_of_timeBodyAcceleration_stdev_z
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the z-component of the body acceleration.


Name: mean_of_timeGravityAcceleration_mean_x
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the x-component of the acceleration
 including gravity and body motion.


Name: mean_of_timeGravityAcceleration_mean_y
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the y-component of the acceleration
 including gravity and body motion.

Name: mean_of_timeGravityAcceleration_mean_z
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the z-component of the acceleration
 including gravity and body motion.

Name: mean_of_timeGravityAcceleration_stdev_x
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the x-component of the acceleration
 including gravity and body motion.

Name: mean_of_timeGravityAcceleration_stdev_y
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the y-component of the acceleration
 including gravity and body motion.


Name: mean_of_timeGravityAcceleration_stdev_z
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the z-component of the acceleration
 including gravity and body motion.


Name: mean_of_timeBodyAccelerationJerk_mean_x
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the mean of the x-component of the derivative of the
 body acceleration.


Name: mean_of_timeBodyAccelerationJerk_mean_y
TType: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the  mean of the y-component of the derivative of the
 body acceleration.


Name: mean_of_timeBodyAccelerationJerk_mean_z
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the  mean of the z-component of the derivative of the
 body acceleration.



Name: mean_of_timeBodyAccelerationJerk_stdev_x
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the standard deviation of the x-component of the derivative of the
 body acceleration.



Name: mean_of_timeBodyAccelerationJerk_stdev_y
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the standard deviation of the y-component of the derivative of the
 body acceleration.


Name: mean_of_timeBodyAccelerationJerk_stdev_z
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the  standard deviation of the z-component of the derivative of the
 body acceleration.



Name: mean_of_timeBodyGyroscopicMotion_mean_x
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the component of the angular
 velocity about the x-axis.


Name: mean_of_timeBodyGyroscopicMotion_mean_y
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the component of the angular
 velocity about the y-axis.



Name: mean_of_timeBodyGyroscopicMotion_mean_z
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the component of the angular
 velocity about the z-axis.


Name: mean_of_timeBodyGyroscopicMotion_stdev_x
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the standard deviation of the component of the angular
 velocity about the x-axis.



Name: mean_of_timeBodyGyroscopicMotion_stdev_y
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the standard deviation of the component of the angular
 velocity about the y-axis.



Name: mean_of_timeBodyGyroscopicMotion_stdev_z
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the  standard deviation of the component of the angular
 velocity about the z-axis.



Name: mean_of_timeBodyGyroscopicMotionJerk_mean_x
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the mean of the derivative of the component
of the angular velocity about the x-axis.



Name: mean_of_timeBodyGyroscopicMotionJerk_mean_y
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the  mean of the derivative of the component
of the angular velocity about the y-axis.



Name: mean_of_timeBodyGyroscopicMotionJerk_mean_z
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the  mean of the derivative of the component
of the angular velocity about the z-axis.


Name: mean_of_timeBodyGyroscopicMotionJerk_stdev_x
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the standard deviation of the derivative of the component
of the angular velocity about the x-axis.


Name: mean_of_timeBodyGyroscopicMotionJerk_stdev_y
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the standard deviation of the derivative of the component
of the angular velocity about the y-axis.



Name: mean_of_timeBodyGyroscopicMotionJerk_stdev_z
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the standard deviation of the derivative of the component
of the angular velocity about the z-axis.



Name: mean_of_timeBodyAccelerationMagnetic_mean
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the body acceleration determined
with respect to some magnetic direction.

Name: mean_of_timeBodyAccelerationMagnetic_stdev
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the body acceleration determined
with respect to some magnetic direction.


Name: mean_of_timeGravityAccelerationMagnetic_mean
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the acceleration from both body motion and gravity determined
with respect to some magnetic direction.


Name: mean_of_timeGravityAccelerationMagnetic_stdev
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the acceleration from both body motion and gravity determined
with respect to some magnetic direction.


Name: mean_of_timeBodyAccelerationJerkMagnetic_mean
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the mean of the derivative of the body acceleration
determined with respect to some magnetic direction.

Name: mean_of_timeBodyAccelerationJerkMagnetic_stdev
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the standard deviation of the derivative of the body acceleration
determined with respect to some magnetic direction.


Name: mean_of_timeBodyGyroscopicMotionMagnetic_mean
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the angular velocity determined with reference to
some magnetic direction.


Name: mean_of_timeBodyGyroscopicMotionMagnetic_stdev
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the standard deviation of the angular velocity determined with reference to
some magnetic direction.


Name: mean_of_timeBodyGyroscopicMotionJerkMagnetic_mean
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the mean of the derivative of the angular velocity determined with reference to
some magnetic direction.


Name: mean_of_timeBodyGyroscopicMotionJerkMagnetic_stdev
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the standard deviation of the derivative of the angular velocity determined with reference to
some magnetic direction.




Name: mean_of_freqBodyAcceleration_mean_x
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the x-component of the body acceleration
expressed in the frequency domain.


Name: mean_of_freqBodyAcceleration_mean_y
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the y-component of the body acceleration
expressed in the frequency domain.


Name: mean_of_freqBodyAcceleration_mean_z
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the z-component of the body acceleration
expressed in the frequency domain.


Name: mean_of_freqBodyAcceleration_stdev_x
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the x-component of the body acceleration
expressed in the frequency domain.


Name: mean_of_freqBodyAcceleration_stdev_y
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the y-component of the body acceleration
expressed in the frequency domain.


Name: mean_of_freqBodyAcceleration_stdev_z
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviation of the z-component of the body acceleration
expressed in the frequency domain.


Name: mean_of_freqBodyAccelerationJerk_mean_x
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the mean of the x-component of the derivative ot the
body acceleration expressed in the frequency domain.

Name: mean_of_freqBodyAccelerationJerk_mean_y
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the mean of the y-component of the derivative ot the
body acceleration expressed in the frequency domain.



Name: mean_of_freqBodyAccelerationJerk_mean_z
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the mean of the z-component of the derivative ot the
body acceleration expressed in the frequency domain.



Name: mean_of_freqBodyAccelerationJerk_stdev_x
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the standard deviation of the x-component of the derivative ot the
body acceleration expressed in the frequency domain.



Name: mean_of_freqBodyAccelerationJerk_stdev_y
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the standard deviation of the y-component of the derivative ot the
body acceleration expressed in the frequency domain.


Name: mean_of_freqBodyAccelerationJerk_stdev_z
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the standard deviation of the z-component of the derivative ot the
body acceleration expressed in the frequency domain.


Name: mean_of_freqBodyGyroscopicMotion_mean_x
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the component of the angular velocity
 about the x-axis expressed in the frequency domain.

Name: mean_of_freqBodyGyroscopicMotion_mean_y
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the component of the angular velocity
 about the y-axis expressed in the frequency domain.


Name: mean_of_freqBodyGyroscopicMotion_mean_z
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the component of the angular velocity
 about the z-axis expressed in the frequency domain.


Name: mean_of_freqBodyGyroscopicMotion_stdev_x
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the standard deviation of the component of the angular velocity 
about the x-axis expressed in the frequency domain.


Name: mean_of_freqBodyGyroscopicMotion_stdev_y
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the standard deviation of the component of the angular velocity 
about the y-axis expressed in the frequency domain.


Name: mean_of_freqBodyGyroscopicMotion_stdev_z
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the standard deviation of the component of the angular velocity 
about the z-axis expressed in the frequency domain.



Name: mean_of_freqBodyAccelerationMagnetic_mean
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the mean of the body acceleration determined
with respect to some magnetic direction expressed in the frequency domain.

Name: mean_of_freqBodyAccelerationMagnetic_stdev
Type: An unbounded floating point number.
Units: g units are used.  This is a multiple of 9.8 meters/second^2.
Definition: The average value of the standard deviatio of the body acceleration determined
with respect to some magnetic direction expressed in the frequency domain.



Name: mean_of_freqBodyAccelerationJerkMagnetic_mean
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the mean of the derivative of the body acceleration determined
with respect to some magnetic direction expressed in the frequency domain.


Name: mean_of_freqBodyAccelerationJerkMagnetic_stdev
Type: An unbounded floating point number.
Units:g units are used.  This is a multiple of 9.8 m/sec^2.
In this case we want a derivative, so the number is a multiple of 9.8 meters/second^3.
Definition: The average value of the standard deviation of the derivative of the body acceleration determined
with respect to some magnetic direction expressed in the frequency domain

Name: mean_of_freqBodyGyroscopicMotionMagnetic_mean
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the mean of the angular velocity determined with respect to
some magnetic direction expressed in the frequency domain.

Name: mean_of_freqBodyGyroscopicMotionMagnetic_stdev
Type: An unbounded floating point number.
Units: radians/second
Definition: The average value of the standard deviation of the angular velocity determined with respect to
some magnetic direction expressed in the frequency domain.



Name: mean_of_freqBodyGyroscopicMotionJerkMagnetic_mean
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the derivative of the angular velocity determined with respect to
some magnetic direction expressed in the frequency domain.


Name: mean_of_freqBodyGyroscopicMotionJerkMagnetic_stdev
Type: An unbounded floating point number.
Units: radians/second^2
Definition: The average value of the derivative of the angular velocity determined with respect to
some magnetic direction expressed in the frequency domain.

