import pyodbc 
from pymongo import MongoClient

sql_conn = pyodbc.connect(
    'DRIVER={SQL Server};'
    'SERVER=DESKTOP-2HELUA2;'
    'DATABASE=NOSQL_PROJECT_OPTICAL;'
    'Trusted_Connection=yes;'
)
sql_cursor = sql_conn.cursor()

mongo_client = MongoClient("mongodb://localhost:27017/")
mongo_db = mongo_client["optical_store_nosql"]
managers_collection = mongo_db["managers"]

managers_collection.delete_many({})

sql_cursor.execute("SELECT m_id FROM manager")

for row in sql_cursor.fetchall():
    doc = {
        "_id": row.m_id
    }
    managers_collection.insert_one(doc)

print("Manager data migrated successfully.")
