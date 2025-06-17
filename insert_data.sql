
-- Insert record into Members table

INSERT INTO Members(member_id, name, email, join_date) VALUES
(1, 'Vishal Jadhav', 'vishal.jadhav@example.com', '2023-01-10'),
(2, 'Sailee Pote', 'sneha.patel@example.com', '2023-02-15'),
(3, 'Sagar Jadhav', 'sagar.jadhav@example.com', '2023-03-20'),
(4, 'Tushar Jadhav', 'tushar.jadhav@example.com', '2023-04-25'),
(5, 'Omkar Rao', 'omkar.rao@example.com', '2023-05-30'),
(6, 'Priya Verma', 'priya.verma@example.com', '2023-06-05'),
(7, 'Rahul Nair', 'rahul.nair@example.com', '2023-07-12'),
(8, 'Kavya Joshi', 'kavya.joshi@example.com', '2023-08-18'),
(9, 'Arjun Khanna', 'arjun.khanna@example.com', '2023-09-22'),
(10, 'Neha Kapoor', 'neha.kapoor@example.com', '2023-10-28');


-- Insert records into Books table

INSERT INTO Books (book_id, title, author, genre, available_copies) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 'Fiction', 5),
(102, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 3),
(103, '1984', 'George Orwell', 'Dystopian', 4),
(104, 'A Brief History of Time', 'Stephen Hawking', 'Science', 2),
(105, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 6),
(106, 'The Lean Startup', 'Eric Ries', 'Business', 4),
(107, 'Sapiens', 'Yuval Noah Harari', 'History', 5),
(108, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Autobiography', 3),
(109, 'The Power of Habit', 'Charles Duhigg', 'Self-Help', 7),
(110, 'Rich Dad Poor Dad', 'Robert T. Kiyosaki', 'Finance', 4);


-- Insert records into Issues table

INSERT INTO Issues (issue_id, member_id, book_id, issue_date, return_date) VALUES
(1, 1, 101, '2024-01-05', '2024-01-20'),
(2, 2, 102, '2024-01-15', '2024-01-30'),
(3, 3, 103, '2024-02-10', NULL),
(4, 4, 104, '2024-02-15', '2024-03-01'),
(5, 5, 105, '2024-03-05', NULL),
(6, 6, 106, '2024-03-12', '2024-03-25'),
(7, 7, 107, '2024-04-01', NULL),
(8, 8, 108, '2024-04-10', '2024-04-25'),
(9, 9, 109, '2024-05-05', NULL),
(10, 10, 110, '2024-05-15', NULL);
