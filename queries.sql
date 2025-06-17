-- 1. View all members

SELECT * FROM Members;

-- 2. View all books
SELECT * FROM Books;

-- 3. View all issued books
SELECT * FROM Issues;

-- 4. List available books
SELECT * FROM Books WHERE available_copies > 0;

-- 5. List books of a specific genre
SELECT * FROM Books WHERE genre = 'Fiction';

-- 6. List of books issued with member details
SELECT m.name, b.title, i.issue_date
FROM Issues i
JOIN Members m ON i.member_id = m.member_id
JOIN Books b ON i.book_id = b.book_id;

-- 7. Count how many books are issued
SELECT COUNT(*) AS total_issued_books FROM Issues;

-- 8. Find books that are not returned yet
SELECT m.name, b.title, i.issue_date
FROM Issues i
JOIN Members m ON m.member_id = i.member_id
JOIN Books b ON b.book_id = i.book_id
WHERE i.return_date IS NULL;

-- 9. Get details of members who joined after Jan 2023
SELECT * FROM Members WHERE join_date > '2023-01-01';

-- 10. List books with low stock (e.g., ≤2 copies)
SELECT * FROM Books WHERE available_copies <= 2;

-- 11. Count number of times each book is issued
SELECT b.title, COUNT(*) AS issue_count
FROM Issues i
JOIN Books b ON i.book_id = b.book_id
GROUP BY b.title
ORDER BY issue_count DESC;

-- 12. Find members who have issued more than 1 book
SELECT m.name, COUNT(i.issue_id) AS books_issued
FROM Issues i
JOIN Members m ON i.member_id = m.member_id
GROUP BY m.name
HAVING COUNT(i.issue_id) > 1;

-- 13. List the latest books issued
SELECT m.name, b.title, i.issue_date
FROM Issues i
JOIN Members m ON m.member_id = i.member_id
JOIN Books b ON b.book_id = i.book_id
ORDER BY i.issue_date DESC
LIMIT 5;

-- 14. Find most issued book(s)
SELECT b.title, COUNT(*) AS count
FROM Issues i
JOIN Books b ON i.book_id = b.book_id
GROUP BY b.title
ORDER BY count DESC
LIMIT 1;

-- 15. Get number of books each genre has
SELECT genre, COUNT(*) AS book_count
FROM Books
GROUP BY genre;
