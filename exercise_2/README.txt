Exercise 2
Step by Step instructions on how to run Twitter Stream Application

1) Create tcount Postgres database:  In the  exercise_2 folder, type "python create_tcount.py"

2) Capture live Twitter Stream data: In exercise_2/extweetwordcount, run
streamparse by typing "sparse run".  To stop the stream processing, type
"ctrl+c"

3) Get number of occurrences for a specific word: In the exercise_2 folder,
type "python finalresults.py", and then the word to query.  If no argument is
inputted, the program will give the total count of occurrences for all words
in the stream, sorted alphabetically.

4) Get the words that have total number of occurrences between the two
arguments passed into the script: In the exercise_2 folder, type "python
histogram.py", then two integers separated by a comma.


