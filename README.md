# optical-store-nosql
Migration of Optical Store Management System from SQL Server to MongoDB

## 📌 Project Objective
The objective of this project is to demonstrate practical knowledge of both relational and non-relational database systems by migrating an Optical Store Management System from SQL Server to a NoSQL database (MongoDB). This involves database design, modeling, data population, and programmatic migration, along with documentation and presentation of the entire process.

## 📁 Project Structure

optical-store-nosql/
├── sql/
│   ├── SQLCode.sql
│   ├── SQLDataInsertion.sql
│   └── SQLQueries.sql
├── migration/
│   ├── client\_migration.py
│   ├── employee\_migration.py
│   ├── eye\_examination\_migration.py
│   ├── included\_in\_migration.py
│   ├── invoice\_migration.py
│   ├── makes\_migration.py
│   ├── manager\_migration.py
│   ├── medical\_worker\_migration.py
│   ├── sales\_worker\_migration.py
│   ├── product\_migration.py
│   ├── purchase\_migration.py
│   ├── supplier\_migration.py
│   └── supplies\_migration.py
├── nosql/
│   ├── optical\_store\_nosql.clients
│   ├── optical\_store\_nosql.employees
│   ├── optical\_store\_nosql.eye\_examination
│   ├── optical\_store\_nosql.invoices
│   └── ...
├── docs/
│   ├── Query Results
│   └── Documentation
└── README.md

## 🏗️ Relational Database Design and Modeling
- **Database:** `NOSQL_PROJECT_OPTICAL` (SQL Server)
- **Tables Created:** 13  
- **Entities:** Clients, Employees, Salesworkers, Medical Workers, Invoices, Eye Examinations, Products, Purchases, Suppliers, Managers, and the many-to-many relationships: Makes, Supplies, Included_in.
- **Constraints:** All relevant Primary and Foreign Keys are applied, including cascading deletes where appropriate.
- **Sample Data:** ~20 records per table to simulate realistic business operations in an optical store.
📄 Refer to `sql/SQLCode.sql` and `sql/SQLDataInsertion.sql` for full schema and data definitions.

## 📊 Data Population
All tables are populated with realistic test data using SQL INSERT statements. Screenshots are included in the `docs/Query Results` folder.

## 🗂️ Choice of NoSQL Database
- **Selected Database:** MongoDB (Document-based)

### 💡 Why MongoDB?
- Best supports document-oriented modeling of client, product, invoice, and eye examination data.
- Flexible schema evolution fits business use cases better than strict relational structures.
- Well-supported by Python for scripting and migration.

## 📦 NoSQL Database Modeling
The data is modeled into collections:
- `clients`, `employees`, `salesworkers`, `medicalworkers`, `products`, `invoices`, `purchases`, etc.
Each collection is migrated using the corresponding Python script inside the `/migration` folder.
MongoDB document files are stored under the `/nosql` folder.

## 🔁 Data Migration Process
- **Tool:** Python  
- **Libraries Used:** `pymongo`, `pyodbc`

### 🔄 Process:
1. Connect to SQL Server and fetch data.
2. Transform SQL rows to MongoDB-compatible documents.
3. Insert documents into corresponding MongoDB collections.
4. Log and verify inserts.
Scripts include exception handling and basic verification.

## ▶️ How to Run
# Clone the repository
git clone https://github.com/GjikaZh/optical-store-nosql.git
cd optical-store-nosql
# Run Docker and launch MongoDB container (if not using a local instance)
# Open the project in VS Code or PyCharm
# Install required libraries pip install pymongo pyodbc
# Run migration scripts one by one
# Use MongoDB Compass or the Mongo shell to inspect inserted documents

## 👥 Contributors
* **Merita Aliu** –  ma30931@seeu.edu.mk
* **Gjilizar Zhuta** – gz30919@seeu.edu.mk
