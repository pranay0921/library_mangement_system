-- ==========================================
-- Library Management System - queries.sql
-- ==========================================

-- 1. Display all books
SELECT * FROM Books;


-- 2. Display all members
SELECT * FROM Members;


-- 3. Find books belonging to the Programming category
SELECT *
FROM Books
WHERE Category = 'Programming';


-- 4. Show which member borrowed which book
SELECT m.Member_name,
       b.Title,
       bi.issue_date,
       bi.due_date
FROM Book_Issue bi
JOIN Members m
ON bi.member_id = m.Member_id
JOIN Books b
ON bi.book_id = b.Book_Id;


-- 5. Show returned books along with member details and fine amount
SELECT m.Member_name,
       b.Title,
       br.return_date,
       br.fine_amount
FROM Book_Return br
JOIN Book_Issue bi
ON br.issue_id = bi.issue_id
JOIN Members m
ON bi.member_id = m.Member_id
JOIN Books b
ON bi.book_id = b.Book_Id;


-- 6. Count total number of books in the library
SELECT COUNT(*) AS Total_Books
FROM Books;


-- 7. Count members department-wise
SELECT Department,
       COUNT(*) AS Total_Members
FROM Members
GROUP BY Department;


-- 8. Find the most borrowed books
SELECT b.Book_Id,
       b.Title,
       COUNT(*) AS Times_Issued
FROM Book_Issue bi
JOIN Books b
ON bi.book_id = b.Book_Id
GROUP BY b.Book_Id, b.Title
ORDER BY Times_Issued DESC;


-- 9. Find members who borrowed the most books
SELECT m.Member_id,
       m.Member_name,
       COUNT(*) AS Books_Borrowed
FROM Book_Issue bi
JOIN Members m
ON bi.member_id = m.Member_id
GROUP BY m.Member_id, m.Member_name
ORDER BY Books_Borrowed DESC;


-- 10. Calculate total fine collected
SELECT SUM(fine_amount) AS Total_Fine
FROM Book_Return;


-- 11. Find members who paid fines
SELECT m.Member_name,
       br.fine_amount
FROM Book_Return br
JOIN Book_Issue bi
ON br.issue_id = bi.issue_id
JOIN Members m
ON bi.member_id = m.Member_id
WHERE br.fine_amount > 0;


-- 12. Find books that have not been returned yet
SELECT bi.issue_id,
       m.Member_name,
       b.Title,
       bi.due_date
FROM Book_Issue bi
JOIN Members m
ON bi.member_id = m.Member_id
JOIN Books b
ON bi.book_id = b.Book_Id
WHERE bi.issue_id NOT IN (
    SELECT issue_id
    FROM Book_Return
);


-- 13. Find books with less than 3 copies available
SELECT *
FROM Books
WHERE Available_copies < 3;


-- 14. Display fine status using CASE
SELECT return_id,
       fine_amount,
       CASE
           WHEN fine_amount > 0 THEN 'Fine Paid'
           ELSE 'No Fine'
       END AS Fine_Status
FROM Book_Return;


-- 15. Create a view for currently issued books
CREATE VIEW Current_Issues AS
SELECT bi.issue_id,
       m.Member_name,
       b.Title,
       bi.issue_date,
       bi.due_date
FROM Book_Issue bi
JOIN Members m
ON bi.member_id = m.Member_id
JOIN Books b
ON bi.book_id = b.Book_Id
WHERE bi.issue_id NOT IN (
    SELECT issue_id
    FROM Book_Return
);

-- View the currently issued books
SELECT * FROM Current_Issues;