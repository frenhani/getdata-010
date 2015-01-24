run_analysis <- function() {
  
  ##load test and train measurements first
  xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
  xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")

  ##merge measurements
  xdata <- rbind(xtest, xtrain)
  
  ##read feature labels from features.txt
  featlabels <- read.table("UCI HAR Dataset/features.txt")
  
  ## rename column variables to use 'features.txt' labels
  names(xdata) <- featlabels[,2]
  
  ##stores column indices for columns with mean() and std() on it
  m_indices <- grep("mean()", featlabels$V2, fixed=TRUE)
  s_indices <- grep("std()", featlabels$V2, fixed=TRUE)
  col_indices <- sort(c(m_indices, s_indices))

  ##generate unique names to be able to use select()
  uniqueNames <- make.names(featlabels$V2, unique=TRUE)
  names(xdata) <- uniqueNames
  
  ##extract only desired colums
  filter_data <- select(xdata, col_indices)
  
  ## load and merge subjects
  subjtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
  subjtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
  subj <- rbind(subjtest, subjtrain)
  
  ## load and merge activities
  activtest <- read.table("UCI HAR Dataset/test/y_test.txt")
  activtrain <- read.table("UCI HAR Dataset/train/y_train.txt")
  activ <- rbind(activtest, activtrain)

  ##merge all subsets
  xdf <- cbind(filter_data, subj, activ)
  
  ##rename last two columns
  n <- ncol(xdf)
  names(xdf)[n-1] <- "subjectid"
  names(xdf)[n] <- "activity"
  
  ##rename variable names with more descriptive ones
  names(xdf) <- gsub(".", "", names(xdf), fixed=TRUE)
  names(xdf) <- gsub("^t", "time", names(xdf), fixed=FALSE)
  names(xdf) <- gsub("^f", "frequency", names(xdf), fixed=FALSE)
  names(xdf) <- gsub("Acc", "acceleration", names(xdf), fixed=TRUE)
  names(xdf) <- gsub("Mag", "magnitude", names(xdf), fixed=TRUE)
  names(xdf) <- gsub("[B]", "b", names(xdf), fixed=FALSE)
  names(xdf) <- gsub("[G]", "g", names(xdf), fixed=FALSE)
  names(xdf) <- gsub("[J]", "j", names(xdf), fixed=FALSE)
  
  ## replaces activity IDs with names from "activity_labels.txt"
  activlabels <- read.table("UCI HAR Dataset/activity_labels.txt")
  xdf$activity <- activlabels[xdf$activity, 2]
  
  ## group measurements by Subject_ID and Activity and prints mean to output file
  tbl_df(xdf) %>% group_by(subjectid, activity) %>% 
    summarise_each(funs(mean)) %>% write.table("output.txt", row.names=FALSE)
}
