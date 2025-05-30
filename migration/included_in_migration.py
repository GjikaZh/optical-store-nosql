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
included_in_collection = mongo_db["included_in"]

# Clear existing data (optional)
included_in_collection.delete_many({})

# Fetch and insert included_in
sql_cursor.execute("SELECT pr_id, i_id, pu_num FROM included_in")

for row in sql_cursor.fetchall():
    doc = {
        "product_id": row.pr_id,
        "invoice_id": row.i_id,
        "purchase_number": int(row.pu_num)  
    }
    included_in_collection.insert_one(doc)

print("Included_in data migrated successfully.")
