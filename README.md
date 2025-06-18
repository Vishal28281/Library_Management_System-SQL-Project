# 📚 Library Management System (SQL Project)

A relational database project built using SQL to manage a library system. It helps track members, books, and the issue/return process. This project demonstrates practical use of SQL including table design, data insertion, joins, and queries.

---

## 🛠️ Features

- Store and manage member records
- Store and manage book inventory
- Issue and return books with date tracking
- Perform meaningful queries for reports and analytics
- Use joins, aggregations, constraints, and more

---

## 🗃️ Database Schema

### 1. `Members`
| Column Name   | Data Type     | Description            |
|---------------|---------------|------------------------|
| member_id     | INT (PK)      | Unique member ID       |
| name          | VARCHAR(50)   | Member's full name     |
| email         | VARCHAR(100)  | Email address          |
| join_date     | DATE          | Date of joining        |

### 2. `Books`
| Column Name       | Data Type     | Description              |
|-------------------|---------------|--------------------------|
| book_id           | INT (PK)      | Unique book ID           |
| title             | VARCHAR(255)  | Title of the book        |
| author            | VARCHAR(255)  | Author's name            |
| genre             | VARCHAR(50)   | Book genre               |
| available_copies  | INT           | Number of copies in stock|

### 3. `Issues`
| Column Name   | Data Type     | Description                      |
|---------------|---------------|----------------------------------|
| issue_id      | INT (PK)      | Unique issue ID                  |
| member_id     | INT (FK)      | References `Members(member_id)` |
| book_id       | INT (FK)      | References `Books(book_id)`     |
| issue_date    | DATE          | Date when the book was issued   |
| return_date   | DATE / NULL   | Date when the book was returned |

---

## 💾 Sample SQL Files

- `schema.sql` – Contains all CREATE TABLE statements
- `insert_data.sql` – Contains INSERT statements for initial data
- `queries.sql` – Contains useful SELECT, JOIN, and AGGREGATE queries

---

## 🔍 Sample Queries

```sql
-- List all books issued with member names
SELECT m.name, b.title, i.issue_date
FROM Members m
JOIN Issues i ON m.member_id = i.member_id
JOIN Books b ON i.book_id = b.book_id;

-- Show all books with zero available copies
SELECT title FROM Books WHERE available_copies = 0;



