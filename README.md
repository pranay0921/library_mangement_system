# 📚 Library Management System (MySQL)

## 📌 Project Overview
The Library Management System is a database-driven project developed using **MySQL** to efficiently manage library operations. It enables the management of books, members, book issuance, returns, and fine calculations. This project demonstrates fundamental and intermediate SQL concepts commonly used in real-world database applications.

---

## 🎯 Objectives
- Manage book records available in the library.
- Maintain member information.
- Track book issue and return transactions.
- Calculate and monitor overdue fines.
- Generate useful reports using SQL queries.

---

## 🛠️ Tools & Technologies
- **Database:** MySQL
- **IDE:** MySQL Workbench
- **Version Control:** Git & GitHub

---

## 🗂️ Database Schema

The project consists of the following tables:

### 1. Books
Stores details of books available in the library.

| Column Name | Data Type |
|-------------|------------|
| Book_Id | INT |
| Title | VARCHAR(15) |
| Author | VARCHAR(20) |
| Category | VARCHAR(15) |
| Available_copies | INT |

---

### 2. Members
Stores information about library members.

| Column Name | Data Type |
|-------------|------------|
| Member_id | INT |
| Member_name | VARCHAR(20) |
| Department | VARCHAR(12) |
| Phone | VARCHAR(15) |
| Email_id | VARCHAR(18) |

---

### 3. Librarians
Stores librarian details.

| Column Name | Data Type |
|-------------|------------|
| Librarian_id | INT |
| Librarian_name | VARCHAR(15) |
| Phone | VARCHAR(15) |
| Email | VARCHAR(18) |

---

### 4. Book_Issue
Tracks books issued to members.

| Column Name | Data Type |
|-------------|------------|
| issue_id | INT (AUTO_INCREMENT) |
| book_id | INT |
| member_id | INT |
| issue_date | DATE |
| due_date | DATE |

---

### 5. Book_Return
Tracks returned books and fines.

| Column Name | Data Type |
|-------------|------------|
| return_id | INT (AUTO_INCREMENT) |
| issue_id | INT |
| return_date | DATE |
| fine_amount | DECIMAL(10,2) |

---

## 📊 Dataset Summary

- 📚 Books: **40 Records**
- 👥 Members: **25 Records**
- 👨‍💼 Librarians: **5 Records**
- 📖 Book Issues: **50 Records**
- 🔄 Book Returns: **40 Records**

---

## 🔍 SQL Concepts Demonstrated

- SELECT Statements
- WHERE Clause
- INNER JOIN
- GROUP BY
- ORDER BY
- Aggregate Functions (`COUNT`, `SUM`)
- Subqueries
- CASE Statements
- Views
- Primary Keys
- Foreign Keys

---

## 📈 Sample Queries

- Display all books and members.
- Find books by category.
- Show which member borrowed which book.
- Identify the most borrowed books.
- Calculate the total fine collected.
- Find members who paid fines.
- Display books that have not been returned yet.

---

## 📂 Project Structure

```text
library-management-system-sql/
│
├── README.md
├── schema.sql
├── data.sql
├── queries.sql
└── screenshots/
```

---

## 🚀 How to Run the Project

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Open MySQL Workbench.

3. Execute `schema.sql` to create the database tables.

4. Execute `data.sql` to populate the tables with sample data.

5. Execute queries from `queries.sql` to generate reports and insights.

---

## 📸 Screenshots

Screenshots demonstrating the database tables and query outputs are available in the `screenshots` folder.

---

## 👨‍💻 Author

**Pranay Gawas**

- GitHub: https://github.com/pranay0921
- LinkedIn: www.linkedin.com/in/pranay-gawas-7b9a9a38a

---

## 📄 License

This project is created for educational and portfolio purposes.
