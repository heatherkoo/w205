import sys

import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

if len(sys.argv) != 2:
    print "needs one argument"
    exit(1)

if "," not in sys.argv[1]:
    print "needs a comma."
    exit(1)

if sys.argv[1].split(",")[0].isdigit() == False or sys.argv[1].split(",")[1].isdigit() == False:
    print ("needs two integers")
    exit(1)

min_cnt = int(sys.argv[1].split(",")[0])
max_cnt = int(sys.argv[1].split(",")[1])

conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()

cur.execute("SELECT word, count from tweetwordcount")
records = sorted(cur.fetchall())


cnt = 0
for rec in records:
    if min_cnt  <= int(rec[1]) and max_cnt >= int(rec[1]):
        print  rec[0], ": ", rec[1]
        cnt = cnt+1

if cnt == 0:
   print "no words tweeted, histogram not available"
else:
   print cnt, "words tweeted between",min_cnt , "and",max_cnt,  "times."


#if cnt == 0:
#    print "No occurrences of" , word

conn.commit()

conn.close()


