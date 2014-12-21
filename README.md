{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf210
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red26\green26\blue26;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 This is a mark down file to explain how to use the run_analysis. R to finish the course project \
\
Quoting some txt file instruction from readme.txt of\
==================================================================\
Human Activity Recognition Using Smartphones Dataset\
Version 1.0\
==================================================================\
'train/X_train.txt': Training set.\
\
- 'train/y_train.txt': Training labels.\
\
- 'test/X_test.txt': Test set.\
\
- 'test/y_test.txt': Test labels.\
\
- 'features.txt': List of all features.\
\
- 'activity_labels.txt': Links the class labels with their activity name.\
The following files are available for the train and test data. Their descriptions are equivalent. \
\
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. \
\
using read.table separately to read those different table at different steps\
using cbind to combine columns and rbind to combine rows\
!!!please using install.packages(\'93dplyr\'94) and install.packages(\'93tidyr\'94) to make sure codes run smoothly!!!\
select function from library(dplyr) will do selections /extraction with column names contains either \'91mean()\'92 or \'91std()\'92\
merge will help us join the datasets x and y by keywords list in each \'93by\'94 arguments\
\pard\pardeftab720

\f1 \cf2 %>% is a chain operator\
\pard\tx3729\pardeftab720
\cf2 extract %>% means: pass the extract to its next command which is "group_by(....)", group extract by activity and subject, and after that, summarise each.\'a0\
\'93summarise_each\'94 here means for each group of activity and subject, doing operation (which is defined as mean here) on rows within that group. \'a0
\f0 \cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural
\cf0 \
}