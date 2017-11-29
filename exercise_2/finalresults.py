import sys

import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT


conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

cur = conn.cursor()

cur.execute("SELECT word, count from tweetwordcount")
records = sorted(cur.fetchall())


if len(sys.argv) != 2:
    for rec in records:
        print rec[0], ": ", rec[1]    
    exit(1)

word = sys.argv[1]
cnt = 0
for rec in records:
    if word == rec[0]:
        print "Total number of occurrences of", rec[0], ": ", rec[1]
        cnt = cnt + 1

if cnt == 0:
    print "No occurrences of" , word
         
conn.commit()

conn.close()

