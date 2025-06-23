# HRMS Database Project

This project is a **Human Resource Management System (HRMS)** database built using **MySQL**. It includes employee details, leave requests, and department structures, with properly defined relationships using **primary and foreign keys**.

---

## 📌 Features

- ✅ `employees` table with employee personal and work-related info.
- ✅ `department` table with department details.
- ✅ `leave_request` table to manage employee leave records.
- ✅ Foreign key constraints to maintain referential integrity.
- ✅ ER diagram created using MySQL Workbench.
- ✅ Data inserted and tested via SQL queries.

---

## 🧱 Tables and Relationships

### 1. `employees`

| Column       | Type         | Description              |
|--------------|--------------|--------------------------|
| emp_id       | INT (PK)     | Employee ID              |
| first_name   | VARCHAR(30)  | First name               |
| last_name    | VARCHAR(30)  | Last name                |
| email        | VARCHAR(20)  | Email                    |
| phone_no     | INT (UNIQUE) | Phone number             |
| hire_date    | DATE         | Hire date                |
| salary       | INT          | Salary                   |
| manager_id   | VARCHAR(8)   | Manager ID               |

---

### 2. `department`

| Column     | Type         | Description      |
|------------|--------------|------------------|
| dept_id    | VARCHAR(10) (PK) | Department ID   |
| dept_name  | VARCHAR(50)  | Department Name  |

---

### 3. `leave_request`

| Column     | Type          | Description               |
|------------|---------------|---------------------------|
| leave_id   | INT (PK)      | Leave ID                  |
| emp_id     | FK → employees(emp_id) | Employee ID     |
| dept_id    | FK → department(dept_id) | Department ID |
| start_date | DATE          | Leave start date          |
| end_date   | DATE          | Leave end date            |
| location   | VARCHAR(50)   | Leave location            |

---

## 🔗 Relationships

- `leave_request.emp_id` → `employees.emp_id` (Foreign Key)
- `leave_request.dept_id` → `department.dept_id` (Foreign Key)

---

## 🧩 ER Diagram

![ER Diagram](C:\Users\admin\Pictures\Saved Pictures\Er-Diagram)

> ER Diagram created using **MySQL Workbench** showing the relations among all tables.

---

## 💻 How to Run

1. Open MySQL Workbench.
2. Create database: `CREATE DATABASE hrms;`
3. Use database: `USE hrms;`
4. Create tables using the provided SQL.
5. Insert sample data.
6. Run SELECT queries to view results.

---

## 🛠 Technologies Used

- MySQL 8.0
- MySQL Workbench
- SQL (DDL & DML)
- ER Modeling

---

## 📂 Folder Structure
📁 hrms-database/
├── employees.sql
├── department.sql
├── leave_request.sql
├── er-diagram.png
└── README.md
---

## 📌 Author

- 👤 Name: Dev Hemant Mohite
- 🏫 Internship: Elevate-lab
- 📧 Email: dev.mohite2000@gmail.com

---

## 📎 Notes

- Proper use of `STR_TO_DATE()` function to insert date values.
- Ensured data consistency with constraints.
- Used normalization principles in schema design.
