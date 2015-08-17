---
title: "Getting and Cleaning Data Codebook"
author: "Jason Finnigan"
date: "August 16, 2015"
output: html_document
---

This codebook file ('CodeBook.md') details the variables, data and tranformations
 performed to clean and tidy the from the Human Activity Recognition Using 
Smartphones Dataset from Smartlab.

Credits for the original dataset below.
```
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
```
VARIABLES
---------
This section details the variables availabe in the dataset.

Note: tBody variables represent the raw measurement data.  fBody variables represent the frequency domain values following application of a Fast Fourier Transform.

|Variable                              |Position|Type     |Comments|
|--------------------------------------|--------|---------|--------|
|Subject                               |1       |int      |Subject Identifier|
|Activity                              |2       |Factor   |Factor |
|tBodyAccelerationMeanXAxis            |3       |num      |X Axis mean acceleration|
|tBodyAccelerationMeanYAxis            |4       |num      |Y Axis mean acceleration|
|tBodyAccelerationMeanZAxis            |5       |num      |Z Axis mean acceleration|
|tBodyAccelerationSTDXAxis             |6       |num      |X Axis acceleration standard deviation|
|tBodyAccelerationSTDYAxis             |7       |num      |Y Axis acceleration standard deviation|
|tBodyAccelerationSTDZAxis             |8       |num      |Z Axis acceleration standard deviation|
|tGravityAccelerationMeanXAxis         |9       |num      |X Axis mean acceleration due to gravity|
|tGravityAccelerationMeanYAxis         |10      |num      |Y Axis mean acceleration due to gravity|
|tGravityAccelerationMeanZAxis         |11      |num      |Z Axis mean acceleration due to gravity|
|tGravityAccelerationSTDXAxis          |12      |num      |X Axis acceleration due to gravity standard deviation|
|tGravityAccelerationSTDYAxis          |13      |num      |Y Axis acceleration due to gravity standard deviation|
|tGravityAccelerationSTDZAxis          |14      |num      |Z Axis acceleration due to gravity standard deviation|
|tBodyAccelerationJerkMeanXAxis        |15      |num      |X Axis mean acceleration jerk|
|tBodyAccelerationJerkMeanYAxis        |16      |num      |Y Axis mean acceleration jerk|
|tBodyAccelerationJerkMeanZAxis        |17      |num      |Z Axis mean acceleration jerk|
|tBodyAccelerationJerkSTDXAxis         |18      |num      |X Axis acceleration jerk standard deviation|
|tBodyAccelerationJerkSTDYAxis         |19      |num      |Y Axis acceleration jerk standard deviation|
|tBodyAccelerationJerkSTDZAxis         |20      |num      |Z Axis acceleration jerk standard deviation|
|tBodyGyroscopicMeanXAxis              |21      |num      |X Axis gyroscopic mean|
|tBodyGyroscopicMeanYAxis              |22      |num      |Y Axis gyroscopic mean|
|tBodyGyroscopicMeanZAxis              |23      |num      |Z Axis gyroscopic mean|
|tBodyGyroscopicSTDXAxis               |24      |num      |X Axis gyroscopic standard deviation|
|tBodyGyroscopicSTDYAxis               |25      |num      |Y Axis gyroscopic standard deviation|
|tBodyGyroscopicSTDZAxis               |26      |num      |Z Axis gyroscopic standard deviation|
|tBodyGyroscopicJerkMeanXAxis          |27      |num      |X Axis gyroscopic jerk mean|
|tBodyGyroscopicJerkMeanYAxis          |28      |num      |Y Axis gyroscopic jerk mean|
|tBodyGyroscopicJerkMeanZAxis          |29      |num      |Z Axis gyroscopic jerk mean|
|tBodyGyroscopicJerkSTDXAxis           |30      |num      |X Axis gyroscopic jerk standard deviation|
|tBodyGyroscopicJerkSTDYAxis           |31      |num      |Y Axis gyroscopic jerk standard deviation|
|tBodyGyroscopicJerkSTDZAxis           |32      |num      |Z Axis gyroscopic jerk standard deviation|
|tBodyAccelerationMagnitudeMean        |33      |num      |Acceleration magnitude mean|
|tBodyAccelerationMagnitudeSTD         |34      |num      |Acceleration magnitude standard deviation|
|tGravityAccelerationMagnitudeMean     |35      |num      |Acceleration due to gravity magnitude mean|
|tGravityAccelerationMagnitudeSTD      |36      |num      |Acceleration due to gravity magnitude standard deviation|
|tBodyAccelerationJerkMagnitudeMean    |37      |num      |Acceleration due to gravity jerk magnitude mean|
|tBodyAccelerationJerkMagnitudeSTD     |38      |num      |Acceleration due to gravity jerk magnitude standard deviation|
|tBodyGyroscopicMagnitudeMean          |39      |num      |Gyroscopic magnitude mean|
|tBodyGyroscopicMagnitudeSTD           |40      |num      |Gyroscopic magnitude standard deviation|
|tBodyGyroscopicJerkMagnitudeMean      |41      |num      |Gyroscopic due to gravity magnitude mean|
|tBodyGyroscopicJerkMagnitudeSTD       |42      |num      |Gyroscopic due to gravity magnitude standard deviation|
|fBodyAccelerationMeanXAxis            |43      |num      |(frequency domain) X Axis mean acceleration|
|fBodyAccelerationMeanYAxis            |44      |num      |(frequency domain) Y Axis mean acceleration|
|fBodyAccelerationMeanZAxis            |45      |num      |(frequency domain) Z Axis mean acceleration|
|fBodyAccelerationSTDXAxis             |46      |num      |(frequency domain) X Axis acceleration standard deviation|
|fBodyAccelerationSTDYAxis             |47      |num      |(frequency domain) Y Axis acceleration standard deviation|
|fBodyAccelerationSTDZAxis             |48      |num      |(frequency domain) Z Axis acceleration standard deviation|
|fBodyAccelerationJerkMeanXAxis        |49      |num      |(frequency domain) X Axis mean acceleration jerk|
|fBodyAccelerationJerkMeanYAxis        |50      |num      |(frequency domain) Y Axis mean acceleration jerk|
|fBodyAccelerationJerkMeanZAxis        |51      |num      |(frequency domain) Z Axis mean acceleration jerk|
|fBodyAccelerationJerkSTDXAxis         |52      |num      |(frequency domain) X Axis acceleration jerk standard deviation|
|fBodyAccelerationJerkSTDYAxis         |53      |num      |(frequency domain) Y Axis acceleration jerk standard deviation|
|fBodyAccelerationJerkSTDZAxis         |54      |num      |(frequency domain) Z Axis acceleration jerk standard deviation|
|fBodyGyroscopicMeanXAxis              |55      |num      |(frequency domain) X Axis gyroscopic mean|
|fBodyGyroscopicMeanYAxis              |56      |num      |(frequency domain) Y Axis gyroscopic mean|
|fBodyGyroscopicMeanZAxis              |57      |num      |(frequency domain) Z Axis gyroscopic mean|
|fBodyGyroscopicSTDXAxis               |58      |num      |(frequency domain) X Axis gyroscopic standard deviation|
|fBodyGyroscopicSTDYAxis               |59      |num      |(frequency domain) Y Axis gyroscopic standard deviation|
|fBodyGyroscopicSTDZAxis               |60      |num      |(frequency domain) Z Axis gyroscopic standard deviation|
|fBodyAccelerationMagnitudeMean        |61      |num      |(frequency domain) Acceleration magnitude mean|
|fBodyAccelerationMagnitudeSTD         |62      |num      |(frequency domain) Acceleration magnitude standard deviation|
|fBodyBodyAccelerationJerkMagnitudeMean|63      |num      |(frequency domain) Acceleration due to gravity jerk magnitude mean|
|fBodyBodyAccelerationJerkMagnitudeSTD |64      |num      |(frequency domain) Acceleration due to gravity jerk magnitude standard deviation|
|fBodyBodyGyroscopicMagnitudeMean      |65      |num      |(frequency domain) Gyroscopic magnitude mean|
|fBodyBodyGyroscopicMagnitudeSTD       |66      |num      |(frequency domain) Gyroscopic magnitude standard deviation|
|fBodyBodyGyroscopicJerkMagnitudeMean  |67      |num      |(frequency domain) Gyroscopic due to gravity magnitude mean|
|fBodyBodyGyroscopicJerkMagnitudeSTD   |68      |num      |(frequency domain) Gyroscopic due to gravity magnitude standard deviation|

TRANSFORMATIONS
---------
This section details the transformations applied to the original data set.

1. two datasets available in the source data (training and test) are first merged into a single dataset.
2. data is tidied up to result in a single data table by creating a factor for activities and merging activity data and feature labels
3. measurements related only to standard deviation and mean are extracted from the merged data
4. data variables are renamed to be more meaningful

Additionally, a second set of tidy data is generated by transforming the above data set to extract the average of each variable for each activity and each subject.
