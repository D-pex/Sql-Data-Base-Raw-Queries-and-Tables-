# 🗄️ SQL Database – Raw Queries and Tables

This repository contains examples of **SQL database structures, raw queries, and table operations** used for learning and practicing database management.
It demonstrates how to create tables, insert data, retrieve records, and manage relational databases using SQL.

The project is useful for **students, beginners, and developers** who want to understand how SQL queries interact with database tables.

---

# 📌 Project Objectives

* Understand **SQL table creation and schema design**
* Practice **raw SQL queries**
* Learn **data manipulation operations**
* Demonstrate **basic database operations**

---

# 🧰 Technologies Used

* **SQL**
* **Relational Database Concepts**
* **DBMS tools (MySQL / SQLite / PostgreSQL compatible queries)**

SQL is widely used for managing and querying relational databases through commands like `SELECT`, `INSERT`, `UPDATE`, and `DELETE`. ([Gist][1])

---

# 📂 Repository Structure

```
Sql-Data-Base-Raw-Queries-and-Tables-
│
├── tables.sql          # SQL scripts for creating database tables
├── insert_data.sql     # Scripts to insert records
├── queries.sql         # Raw SQL queries for retrieving data
├── update_delete.sql   # Update and delete operations
└── README.md
```

*(File names may vary depending on the repo content.)*

---

# 🗄️ Database Tables Example

Example of creating a table:

```sql
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);
```

---

# 📥 Insert Data Example

```sql
INSERT INTO Students (id, name, age, course)
VALUES (1, 'John', 20, 'Computer Science');
```

---

# 🔍 Query Data Example

```sql
SELECT * FROM Students;
```

Retrieve students older than 18:

```sql
SELECT name, course
FROM Students
WHERE age > 18;
```

---

# ✏️ Update Data Example

```sql
UPDATE Students
SET course = 'Data Science'
WHERE id = 1;
```

---

# ❌ Delete Data Example

```sql
DELETE FROM Students
WHERE id = 1;
```

---

# 📊 Key SQL Concepts Covered

* Table Creation (`CREATE`)
* Data Insertion (`INSERT`)
* Data Retrieval (`SELECT`)
* Data Modification (`UPDATE`)
* Data Deletion (`DELETE`)
* Table Relationships
* Basic Query Filtering

---

# 🚀 How to Use

1. Clone the repository

```bash
git clone https://github.com/D-pex/Sql-Data-Base-Raw-Queries-and-Tables-.git
```

2. Open the SQL files in your database tool (MySQL Workbench, SQLite, PostgreSQL, etc.)

3. Execute the queries step by step.

---

# 🎯 Learning Outcomes

By exploring this repository you will learn:

* How relational databases work
* Writing efficient SQL queries
* Managing tables and records
* Performing CRUD operations

---

# 👨‍💻 Author

**D-pex**

GitHub:
[https://github.com/D-pex](https://github.com/D-pex)
