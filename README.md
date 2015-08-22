# Getting And Cleaning Data - Course Project
## Introduction

Repo contains course project files for "Getting and Cleaning Data"

Repo contents include:

'README.md'      : this file
'README.HTMl'      : HTML version of this file
'run_analysis.R' : R code to perfrom processing
'CodeBook.md'           : codebook describing data 
'CodeBook.html'           : HTML version of codebook
'pdata_output.head.csv.txt' : sample output for processed data
'sdata_output.csv.txt' : final output for summarized data

The `run_analysis.R` script contains code to:

1. Download source dataset from UCI HAR if it does not exist
2. Unpack source dataset ZIP file
3. Read and merge multiple datasets
4. Perform various transformations
5. Output 3 CSV text files representing 2 independent tidy datasets

The `CodeBook.md` codebook details the datasets resulting from `run_analysis.R`

## To run this project
1. Clone the repo
2. Run the run_analysis.R script

## Outputs
1. pdata_output.csv.txt : Full ouptut dataset for step 4 of project
2. pdata_output.head.csv.txt : first 100 lines of output form pdata_output.csv.txt
3. sdata_output.csv.txt : output from step 5 of project

