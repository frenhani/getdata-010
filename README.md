##overall assumptions
There's only one script called run_analysis.R that does all the work.
It assumes this script is located at the root folder of the uncompressed zip file provided as the source data for this project. As a reference, we are refering to the same folder where sub-directory "UCI HAR Dataset" is located. The script
writes the final data frame to an output file called "output.txt".

##load and merge test and train measurements first
First, we use a series of read.table() calls to read X_test.txt and X_train.txt measurement files, then use
rbind() to merge both sets.

##read feature labels from features.txt
Then, we use read.table() to read feature names from features.txt and label the variables in the previously merged dataset.
  
##stores column indices for columns with mean() and std() on it
Since we are only interested in variables with the mean() and std() indicators, we subset the previous data set looking
for variables that have either string on their name. In order to use select() to extract only the desired columns, we
need to generate unique names for each column, which introduces 'dot' characters in some of the names. We get a total of
66 variables with either mean() or std() substring on its name.

## load and merge subjects and activities
After subsetting desired columns, we load (with read.table()) and merge (with rbind()) the final subsets "subjects" and "activities" and merge then with the measurements data frame. The final dataset is stored in local var 'xdf'.

##rename last two columns and replace activity ids with descriptive names
As a side step, we also name the last two columns to better represent subjectid and activity, and replace activity ids with
descriptive names loaded from 'activity_labels.txt'

##rename variable names to more descriptive ones
We use a series of gsub() calls to replace confused variable names to more meaningful ones, especially removing dots,
changing upper cases to lower cases and turning abbreviations to full descriptive names.

## group measurements by subjectid and activity and prints mean to output file
As a final step, we group the entire data frame by subjectid+activity in order to calculate the mean for each pair. Since
there are 30 subjects, and each subject has valid measurements on each of the 6 activities, we get a total of 180
observations for each of the 66 variables (data frame has 68 columns if you add activity and subjectid).
