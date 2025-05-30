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
clients_collection = mongo_db["clients"]

# Clear existing data (optional)
clients_collection.delete_many({})

# Fetch and insert clients
sql_cursor.execute("SELECT c_id, c_name, c_surname, c_birthday, c_phone, c_address, sw_id FROM client")

for row in sql_cursor.fetchall():
    doc = {
        "_id": row.c_id,
        "name": f"{row.c_name} {row.c_surname}",
        "birthday": str(row.c_birthday),
        "phone": row.c_phone,
        "address": row.c_address,
        "sales_worker_id": row.sw_id
    }
    clients_collection.insert_one(doc)

print("Client data migrated successfully.")
