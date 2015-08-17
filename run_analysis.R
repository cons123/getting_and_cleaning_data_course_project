## file: run_analysis.R

## load required libraries
## 
library(plyr)

## globals variables initialized for later use
##
## g_dataset_remote_url: download url for source dataset
## g_dataset_local_zip_name: name of source dataset on local filesystem
## g_data_subject_files: filenames for subject data in test and training data
## g_data_x_files: filenames for observation data in test and training data
## g_data_y_files: filenames for activity data in test and training data
## g_output_pdata_filename: filename for tidy dataset csv output file
## g_output_pdata_head_filename: filename for tidy dataset csv output file
## g_output_sdata_filename: filename for summary dataset csv output file  

g_dataset_remote_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
g_dataset_local_zip_name <- "getdata_projectfiles_UCI_HAR_Dataset.zip"

g_data_dir <-"UCI HAR Dataset"
g_data_subject_files <-c("test/subject_test.txt","train/subject_train.txt")
g_data_x_files <-c("test/X_test.txt","train/X_train.txt")
g_data_y_files <-c("test/y_test.txt","train/y_train.txt")

g_output_pdata_filename <- "pdata_output.csv"
g_output_pdata_head_filename <- "pdata_output.head.csv"
g_output_sdata_filename <- "sdata_output.csv"


## function: acquire_data
## extract source data zip file to prepare for processing.  download first 
## if needed
##
## args: none
## returns: none
##
acquire_data <-function(){
  if(! file.exists(g_dataset_local_zip_name)) {
    download.file(g_dataset_remote_url,g_dataset_local_zip_name,method="curl")
  }
  unzip(g_dataset_local_zip_name)
}

## function: process_data
## load and process data to generate tidy dataset
##
## args: none
## returns: dataframe containing tidy dataset
##
process_data <-function(){
  # load activity labels and feature information
  activities_df <- read.table("activity_labels.txt",col.names=c("Activity_Index","Activity_Name"))
  features_df_all <- read.table("features.txt")

  # filter all feature to only std and mean features
  features_grep <- grep("std\\(\\)|mean\\(\\)",as.character(features_df_all$V2))
  features_df <- features_df_all[features_grep,]
 
  # apply substitutions to features to generate more meaningful names
  features_df_all_new <- as.data.frame(
    apply(features_df_all, 2, function(x) { 
      y<-gsub("-mean\\(\\)","Mean",x)
      y<-gsub("-std\\(\\)","STD",y)
      y<-gsub("Gyro","Gyroscopic",y)
      y<-gsub("Acc","Acceleration",y)
      y<-gsub("Mag","Magnitude",y)
      y<-gsub("-X","XAxis",y)
      y<-gsub("-Y","YAxis",y)
      y<-gsub("-Z","ZAxis",y)
      })
  )

  # read subject data files 
  subject_df <- do.call(rbind,lapply(g_data_subject_files,function(x){read.table(x,header=FALSE,col.names=c("Subject"))}))

  # read observation data
  x_df <- do.call(rbind,lapply(g_data_x_files,function(x){read.table(x,colClasses=c('numeric'),header=FALSE,col.names=features_df_all_new$V2)}))
  # subset data to interesting features (std and mean)
  x_df <- x_df[,features_grep]

  # read activity data files
  y_df <- do.call(rbind,lapply(g_data_y_files,function(x){read.table(x,header=FALSE,col.names="Activity_Index")}))
  # merge activity data with activity labels
  z<-merge(y_df,activities_df)
  # bind subject data with activity data
  all_df<-cbind(subject_df,Activity=z$Activity_Name,x_df)

  return(all_df) 
}

## function: summarize_data
##  takes dataframe from process_data function and generates new dataframe with
##  summary information
## 
## args:
##       pd : dataframe returned from process_data
## returns: 
##       sd : dataframe with tidy data containing average of each variable for 
##            each activity and 
summarize_data <-function(pd){
  aggregate(x = pd[, 3:68], by = list(Activity=pd$Activity,Subject=pd$Subject), FUN = mean)
}

##
## main routine
##

##  acquire data to process
acquire_data()
## set working directory
setwd(g_data_dir)
##  load and process datasets
pdata <- process_data()
## set working directory back to parent
setwd("..")
##  generate second dataset with summary info
sdata <- summarize_data(pdata)
##  generate output CSV files
write.csv(pdata, file = g_output_pdata_filename)
write.csv(head(pdata,100), file = g_output_pdata_head_filename)
write.csv(sdata, file = g_output_sdata_filename)

