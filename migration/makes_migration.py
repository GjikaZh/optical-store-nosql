import pyodbc
from pymongo import MongoClient

# Connect to SQL Server
sql_conn = pyodbc.connect(
    'DRIVER={SQL Server};'
    'SERVER=DESKTOP-2HELUA2;'
    'DATABASE=NOSQL_PROJECT_OPTICAL;'
    'Trusted_Connection=yes;'
)
sql_cursor = sql_conn.cursor()

# Connect to MongoDB
mongo_client = MongoClient("mongodb://localhost:27017/")
mongo_db = mongo_client["optical_store_nosql"]
makes_collection = mongo_db["makes"]

# Clear existing data (optional)
makes_collection.delete_many({})

# Fetch and insert makes
sql_cursor.execute("SELECT c_id, i_id, pu_num FROM makes")

for row in sql_cursor.fetchall():
    doc = {
        "client_id": row.c_id,
        "invoice_id": row.i_id,
        "purchase_number": int(row.pu_num) 
    }
    makes_collection.insert_one(doc)

print("Makes data migrated successfully.")
