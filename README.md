# 💼 HRMS Database Project

This project is a **Human Resource Management System (HRMS)** database built using **MySQL**. It stores and manages employee records, leave requests, department structures, job roles, and manager assignments, with full referential integrity.

---

## 📌 Features

- ✅ `employees` table capturing personal and professional details.  
- ✅ `department` table describing department metadata.  
- ✅ `job` table defining job roles and salary ranges.  
- ✅ `manager` table tracking departmental managers.  
- ✅ `leave_request` table managing employee leave data.  
- ✅ Proper **primary & foreign key constraints**.  
- ✅ ER diagram crafted using **MySQL Workbench**.  
- ✅ Includes sample data and SQL queries for testing.

---

## 🧱 Tables & Relationships

### 1. `employees`

| Column       | Type           | Description                                 |
|--------------|----------------|---------------------------------------------|
| emp_id       | INT (PK)       | Unique employee identifier                  |
| first_name   | VARCHAR(30)    | First name                                  |
| last_name    | VARCHAR(30)    | Last name                                   |
| email        | VARCHAR(50)    | Email address                               |
| phone_no     | BIGINT (UNIQUE)| Contact number                              |
| hire_date    | DATE           | Hiring date                                 |
| dob          | DATE           | Date of birth                               |
| salary       | INT            | Monthly salary                              |
| gender       | VARCHAR(10)    | Gender                                      |
| job_id       | VARCHAR(8)     | FK → `job(job_id)`                          |
| dept_id      | VARCHAR(10)    | FK → `department(dept_id)`                  |
| manager_id   | VARCHAR(8)     | FK → `manager(manager_id)` (optional/nullable) |

---

### 2. `department`

| Column     | Type              | Description                      |
|------------|-------------------|----------------------------------|
| dept_id    | VARCHAR(10) (PK)  | Unique department identifier     |
| dept_name  | VARCHAR(50)       | Department name                  |
| location   | VARCHAR(50)       | Department location              |
| manager_id | VARCHAR(8)        | FK → `manager(manager_id)`       |

---

### 3. `job`

| Column           | Type             | Description                             |
|------------------|------------------|-----------------------------------------|
| job_id           | VARCHAR(8) (PK)  | Job role identifier                     |
| job_title        | VARCHAR(60)      | Job title                               |
| dept_id          | VARCHAR(10)      | FK → `department(dept_id)`              |
| min_salary       | BIGINT           | Minimum salary for the job              |
| max_salary       | BIGINT           | Maximum salary for the job              |

---

### 4. `manager`

| Column        | Type              | Description                         |
|---------------|-------------------|-------------------------------------|
| manager_id    | VARCHAR(8) (PK)   | Unique manager identifier           |
| manager_name  | VARCHAR(50)       | Full name                           |
| join_date     | DATE              | Manager joining date                |
| dob           | DATE              | Date of birth                       |
| gender        | VARCHAR(10)       | Gender                              |
| location      | VARCHAR(50)       | Work location                       |
| dept_id       | VARCHAR(10)       | FK → `department(dept_id)`          |
| salary        | BIGINT            | Manager salary                      |

---

### 5. `leave_request`

| Column      | Type              | Description                          |
|-------------|-------------------|--------------------------------------|
| req_id      | INT (PK)          | Unique leave request ID              |
| emp_id      | INT               | FK → `employees(emp_id)`             |
| dept_id     | VARCHAR(10)       | FK → `department(dept_id)`           |
| start_date  | DATE              | Leave start date                     |
| end_date    | DATE              | Leave end date                       |
| location    | VARCHAR(50)       | Leave location                       |
| status      | VARCHAR(20)       | Leave status (`Approve` / `Reject`) |
| reason      | VARCHAR(255)      | Reason for leave                     |

---

## 🔗 Relationships

- One-to-Many: Department → Employees  
- One-to-Many: Department → Job  
- One-to-One: Department ↔ Manager  
- One-to-Many: Department → Leave Requests  
- One-to-Many: Job → Employees  
- One-to-Many: Employee → Leave Requests  

---

## 🖼 ER Diagram

✔️ Hand-drawn ER diagram: `Er-diagram pen paper.jpeg`  
✔️ Digital ER diagram from MySQL Workbench: `Er-Diagram.PNG`

---

## 🚀 How to Run

1. **Clone this repository**  
   ```bash
   git clone https://github.com/devvv07/hrms-database.git
   cd hrms-database


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

hrms-database/
├── task1.sql                 # Schema + sample data
├── Er-diagram pen paper.jpeg # Hand-drawn ER diagram
├── Er-Diagram.PNG           # Workbench ER diagram
├── hrms_tables folder       # all separate table code
└── README.md                # Project documentation

---

## 📂 Folder Structure
📁 hrms-database/
├── employees.sql
├── department.sql
├── leave_request.sql
├── manager.sql
└── job.sql
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
