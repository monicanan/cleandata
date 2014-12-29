This is a mark down file to explain how to use the run_analysis. R to finish the course project 

Quoting some txt file instruction from readme.txt of

Human Activity Recognition Using Smartphones Dataset
Version 1.0

'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.
The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

using read.table separately to read those different table at different steps
using cbind to combine columns and rbind to combine rows
!!!please using install.packages(“dplyr”) and install.packages(“tidyr”) to make sure codes run smoothly!!!
select function from library(dplyr) will do selections /extraction with column names contains either ‘mean()’ or ‘std()’
merge will help us join the datasets x and y by keywords list in each “by” arguments
%>% is a chain operator
extract %>% means: pass the extract to its next command which is "group_by(....)", group extract by activity and subject, and after that, summarise each. 
“summarise_each” here means for each group of activity and subject, doing operation (which is defined as mean here) on rows within that group.  


