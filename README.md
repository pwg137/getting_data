*Create a working directory.
*Place the file run_analysis.R in this directory.
*Place the dwonloaded zip file with the data in the directory.
*Unzip the file.  tthis will create a subdirectory structure.  The procedure works with the default structure.
*Start R.
*Change thw working directory to the directory in which run_analysis.R and the zip file are.
*Type source("run_analysis.R")
*A function run_anlaysis is now abailable.  It has no inputs.
*Type mydaravariable<-run_analysis().  The varialbe can be whatevey you line.
*The output will be a tidy data set, containing the mean values by subject and activity of the desired variables.
* The subject, activity, and measurements are all in oner R dta frame.
*It will be identical to that in the file pwg_tidy_data.txt.
*All coumns are descriptively labeled.
* To read the set in pwg_tidy_data.txt use he command input<-read.table("pwg_tidy_data.txt, header=TRUE).  
*The name of the variable is irrelevant.  The header=TRUE is required.

Procedure:
* Read in the 6 data files and the activity labels file.
* Merge the measurement data using rbind.
* Merge the subject information using rbind.
* Merge the activity information using rbind.
* Select the desired measurements and label them rpoerply.
* Labbel the subject information properly.
* Convert the activity information to something meaningful without a key and label it properly.
* Place everything in a data frame.
* Loop through all combinations of subject and activity.
* Subset the data frame for each combination.
* Take the mean ov every measyrement.
* Load the sujecct value into a properly labeled matrix.
* Load the activity value into a properly labeled matrix.
* Combine everything into a tidy data frame.
* That concludes everything in the run_analysis.R script.  As directed, I
* wrote the tidy data with a separate command, write.table(tidy_data,file=filename).
