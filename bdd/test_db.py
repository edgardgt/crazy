#!/usr/bin/python
# -*- coding: utf-8 -*-

import sqlite3 as lite
import sys


con = lite.connect('credito.db')

with con:
    
    cur = con.cursor()    
    cur.execute("SELECT * FROM rubro")

    rows = cur.fetchall()

    for row in rows:
        print (row)
