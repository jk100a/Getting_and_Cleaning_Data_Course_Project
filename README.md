# Getting and Cleaning Data Course Project

## Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.

You will be required to submit:
1) a tidy data set as described below
2) a link to a Github repository with your script for performing the analysis
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

Here are the data for the project: 

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

You should create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps to work on this course project

1. Download from the data source, you will get a file named ```getdata-projectfiles-UCI HAR Dataset.zip```. Unzip it on your local drive, you'll have a folder named ```UCI HAR Dataset```.
2. Put ```run_analysis.R``` in the parent folder of ```UCI HAR Dataset``` (IMPORTANT: This must be done first). Then set where it is as your working directory using ```setwd()``` function in RStudio. If you're not sure about the directory, you can open the ```run_analysis.R``` file in RStudio first, then go to ```Session -> Set Working Directory -> To Source File Location```. It will do the same. 
3. Run ```source("run_analysis.R")``` in the console, then it will generate a new file ```Final_data.txt``` in your working directory.

## Dependencies

You will need ```plyr``` package in order to do the analysis associated with ```run_analysis.R```.

Please use ```install.packages("plyr")``` command to install the package first.