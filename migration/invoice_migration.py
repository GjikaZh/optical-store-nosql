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
invoices_collection = mongo_db["invoices"]

invoices_collection.delete_many({})

sql_cursor.execute("SELECT i_id, i_date, i_quantity, i_total, i_taxes, c_id, sw_id FROM invoice")

for row in sql_cursor.fetchall():
    doc = {
        "_id": row.i_id,
        "date": str(row.i_date),
        "quantity": float(row.i_quantity),
        "total": float(row.i_total),
        "taxes": float(row.i_taxes),
        "client_id": row.c_id,
        "sales_worker_id": row.sw_id
    }
    invoices_collection.insert_one(doc)

print("Invoice data migrated successfully.")
