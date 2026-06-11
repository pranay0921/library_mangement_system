-- Create Books table
CREATE TABLE Books (
    Book_Id INT UNIQUE,
    Title VARCHAR(15),
    Author VARCHAR(20),
    Category VARCHAR(15),
    Available_copies INT
);

-- Create Members table
CREATE TABLE Members (
    Member_id INT UNIQUE,
    Member_name VARCHAR(20),
    Department VARCHAR(12),
    Phone VARCHAR(15),
    Email_id VARCHAR(18)
);

-- Create Librarians table
CREATE TABLE Librarians (
    Librarian_id INT UNIQUE,
    Librarian_name VARCHAR(15),
    Phone VARCHAR(15),
    Email VARCHAR(18)
);

-- Create Book_Issue table
CREATE TABLE Book_Issue (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    issue_date DATE,
    due_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(Book_Id),
    FOREIGN KEY (member_id) REFERENCES Members(Member_id)
);

-- Create Book_Return table
CREATE TABLE Book_Return (
    return_id INT AUTO_INCREMENT PRIMARY KEY,
    issue_id INT,
    return_date DATE,
    fine_amount DECIMAL(10,2),
    FOREIGN KEY (issue_id) REFERENCES Book_Issue(issue_id)
);