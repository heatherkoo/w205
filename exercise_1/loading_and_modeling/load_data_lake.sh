#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# create staging directories
mkdir ~/staging
mkdir ~/staging/exercise_1

# change to staging directory
cd ~/staging/exercise_1

# get file from data.medicare.gov
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/e514828f-8ed2-445f-b49f-5ac11a58869d?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
wget "$MY_URL" -O medicare_data.zip

# unzip the medicare data
unzip medicare_data.zip

# remove first line of files and rename
OLD_FILE1="Hospital General Information.csv"
NEW_FILE1="hospitals.csv"

OLD_FILE2="Timely and Effective Care - Hospital.csv"
NEW_FILE2="effective_care.csv"

OLD_FILE3="Complications and Deaths - Hospital.csv"
NEW_FILE3="readmissions.csv"

OLD_FILE4="Measure Dates.csv"
NEW_FILE4="measures.csv"

OLD_FILE5="hvbp_hcahps_11_10_2016.csv"
NEW_FILE5="surveys_responses.csv"

tail -n +2 "$OLD_FILE1" >$NEW_FILE1
tail -n +2 "$OLD_FILE2" >$NEW_FILE2
tail -n +2 "$OLD_FILE3" >$NEW_FILE3
tail -n +2 "$OLD_FILE4" >$NEW_FILE4
tail -n +2 "$OLD_FILE5" >$NEW_FILE5

# create hdfs directory
hdfs dfs -mkdir /user/w205/hospital_compare

#copy files to hfs
hdfs dfs -put $NEW_FILE1 /user/w205/hospital_compare
hdfs dfs -put $NEW_FILE2 /user/w205/hospital_compare
hdfs dfs -put $NEW_FILE3 /user/w205/hospital_compare
hdfs dfs -put $NEW_FILE4 /user/w205/hospital_compare
hdfs dfs -put $NEW_FILE5 /user/w205/hospital_compare

#change directory back to original
cd $MY_CWD

#clean exit
exit
