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
eye_exams_collection = mongo_db["eye_examinations"]

eye_exams_collection.delete_many({})

sql_cursor.execute("SELECT ex_id, right_eye_pres, left_eye_pres, ex_date, ex_time, type_of_ex, c_id, medw_id FROM eye_examination")

for row in sql_cursor.fetchall():
    doc = {
        "_id": row.ex_id,
        "right_eye_prescription": float(row.right_eye_pres),
        "left_eye_prescription": float(row.left_eye_pres),
        "date": str(row.ex_date),
        "time": str(row.ex_time),
        "type": row.type_of_ex,
        "client_id": row.c_id,
        "medical_worker_id": row.medw_id
    }
    eye_exams_collection.insert_one(doc)

print("Eye Examination data migrated successfully.")
