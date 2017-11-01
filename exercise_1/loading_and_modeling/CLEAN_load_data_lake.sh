#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# empty and remove staging directories
rm ~/staging/exercise_1/*
rmdir ~/staging/exercise_1
rmdir ~/staging 

# remove files from hfs
hdfs dfs -rm /user/w205/hospital_compare/hospitals.csv
hdfs dfs -rm /user/w205/hospital_compare/effective_care.csv
hdfs dfs -rm /user/w205/hospital_compare/readmissions.csv
hdfs dfs -rm /user/w205/hospital_compare/measures.csv
hdfs dfs -rm /user/w205/hospital_compare/survey_responses.csv

# remove hdfs directory
hdfs dfs -rmdir /user/w205/hospital_compare


#change directory back to original
cd $MY_CWD

#clean exit
exit
