#Getting and Cleaning Data course assignment

This repository is for my worked related to the Getting and Cleaning Data's final course assignment. Below are the general instructions:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

The following files are in this repository:

1. [README.md](https://github.com/genelle/Getting-Cleaning-Data/blob/master/README.md - describes the assignment and the script that I wrote
2. [CodeBook.md](https://github.com/genelle/Getting-Cleaning-Data/blob/master/CodeBook.md) - describes the study in more detail, as well as provides information on the variables used and measurements made
3. [run_analysis.R](https://github.com/genelle/Getting-Cleaning-Data/blob/master/run_analysis.R) - the actual R script I wrote to do my analysis

##Script breakdown
Below is a breakdown of the actions and calculations performed in my analysis. Please refer to [run_analysis](https://github.com/genelle/Getting-Cleaning-Data/blob/master/run_analysis.R) for more details. Make sure you properly set your working directory before running.

1. Download datasets 
2. Unzip datasets 
3. Load all datasets into data frames
4. Merged train and test datasets so the subjects, activities, and measured data were all contained in one dataset
5. Renamed columns for readability
6. Removed columns that were not calculating the mean or standard deviation of a measurement.
7. Merged above dataset with a labels dataset so the activity done was easy to read
8. Melt the dataset using the melt() function for ease of the next calculations
9. Calculate the mean of each measurement by subject and activity and save to new dataset
10. Write final dataset from step 9 into tidy.txt



##Modifications

8/16/2016 - all files added, minor changes made to CodeBook after initial upload due to spelling errors and desired style changes
