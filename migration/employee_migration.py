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
employees_collection = mongo_db["employees"]

# Clear existing data (optional)
employees_collection.delete_many({})

# Fetch and insert employees
sql_cursor.execute("SELECT e_id, e_name, e_surname, e_contact FROM employee")

for row in sql_cursor.fetchall():
    doc = {
        "_id": row.e_id,
        "name": f"{row.e_name} {row.e_surname}",
        "contact": row.e_contact
    }
    employees_collection.insert_one(doc)

print("Employee data migrated successfully.")
