# How the script works

1. Read tables for each data set and cbind them to get one data frame with columns for subjects, activities, and rest of data.
2. Merge both data frames into one with rbind.
3. Change column names in the data frame. 
 - First, open the variables names data frame.
 - Second, extract the column with the names, including the first two columns, to a vector and then assign it as column names of   the data frame.
4. Extract only the means and standard deviations for each measurement. 
 - Use grepl, that matches patterns in a character vector and merge new data frame with subject and activity columns.
5. Use descriptive activity names to name the activities in the data set.
 - Read activity_labels.txt, and substitute values of "Activity" column of activity.msd dataframe to character values.
6. Tidy data: Open dplyr library, and use group_by to group subject and activity, to obtain the average of the variables for       each subject in each activity.
7. Change names of variables to the average_of_variable. 
8. Write table to obtain a txt file. 
