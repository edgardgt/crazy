import sqlite3
import os
import os.path
import ctypes

## 23/MAY/2017: Realizando pruebas para efectuar insert con scripts en sqlite con python

databaseFile = 'credito.db'
sqlFile = 'DMLcredito2.sql'

# Delete the old table
#if os.path.isfile(databaseFile):
#    os.remove(databaseFile)

# Create the tables
qry = open(sqlFile, 'r').read()
sqlite3.complete_statement(qry)
conn = sqlite3.connect(databaseFile)
cursor = conn.cursor()
try:
    cursor.executescript(qry)
except Exception as e:
    MessageBoxW = ctypes.windll.user32.MessageBoxW
    errorMessage = databaseFile + ': ' + str(e)
    MessageBoxW(None, errorMessage, 'Error', 0)
    cursor.close()
    raise
