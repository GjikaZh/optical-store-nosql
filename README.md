# optical-store-nosql
Migration of Optical Store Management System from SQL Server to MongoDB

Project Objective
The objective of this project is to demonstrate practical knowledge of both relational and non-relational database systems by migrating an Optical Store Management System from SQL Server to a NoSQL database (MongoDB). This involves database design, modeling, data population, and programmatic migration, along with documentation and presentation of the entire process.

optical-store-nosql/
├── sql/
│   ├── SQLCode.sql
│   ├── SQLDataInsertion.sql
│   └── SQLQueries.sql
├── migration/
│   ├── client_migration.py
│   └── employee_migration.py
│   └── eye_examination_migration.py
│   └── included_in_migration.py
│   └── invoice_migration.py
│   └── makes_migration.py
│   └── manager_migration.py
│   └── medical_worker_migration.py
│   └── sales_worker_migration.py
│   └── product_migration.py
│   └── purchase_migration.py
│   └── supplier_migration.py
│   └── supplies_migration.py
├── nosql/
│   └── optical_store_nosql.clients
│   └── optical_store_nosql.employees
│   └── optical_store_nosql.eye_examination
│   └── optical_store_nosql.invoices
│   └──             ...
├── docs/
│   └── Query Results
│   └── Documentation
└── README.md


Relational Database Design and Modeling
Database: NOSQL_PROJECT_OPTICAL (SQL Server)
Tables Created: 13
Entities: Clients, Employees, Salesworkers, Medical Workers, Invoices, Eye Examinations, Products, Purchases, Suppliers, Managers, and the three tables from many to many relationships Makes, Supplies, Included_in.
Constraints: All relevant Primary and Foreign Keys are applied, including cascading deletes where appropriate.
Sample: ~20 records per table to simulate realistic business operations in an optical store.
Refer to sql/SQLCode.sql and sql/SQLDataInsertion.sql for full definitions.

Data Population
All tables are populated with realistic test data using SQL INSERT statements. Screenshots are included in the docs/Query Results folder.

Choice of NoSQL Database
Selected Database: MongoDB (Document-based)
Why we chose MongoDB:
Best supports document-oriented modeling of client, product, invoice, and eye examination data.
Flexible schema evolution fits business use cases better than strict relational structures.
Well-supported by Python for scripting and migration.

NoSQL Database Modeling
The data is modeled into collections: clients, employees, salesworkers, medicalworkers, products, invoices, purchases, etc. 
Where each collection is migrated with its appropiate code in python under the /migration folder and the document databases are saved under the nosql/ folder.

Data Migration Process
Tool: Python (With the libraries used: PyMongo, pyodbc)
Process:
Connect to SQL Server and fetch data.
Transform SQL rows to MongoDB-compatible documents.
Insert documents into corresponding MongoDB collections.
Log and verify inserts.

How to Run
git clone https://github.com/GjikaZh/optical-store-nosql.git
cd optical-store-nosql
Run docker and run the mongoDB container
Open in Visual Studio Code or Pycharm 
Install the libraries needed (pip install pymongo pyodbc)
Run the migration scripts one by one
Check the documents in MongoDB 

Contributors
Merita Aliu - ma30931@seeu.edu.mk
Gjilizar Zhuta - gz30919@seeu.edu.mk