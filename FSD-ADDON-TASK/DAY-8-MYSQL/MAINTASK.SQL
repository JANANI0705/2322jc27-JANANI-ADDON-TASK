-- Create Books table
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    available BOOLEAN DEFAULT TRUE
);

-- Create Members table
CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

-- Create Borrow table
CREATE TABLE borrow (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);
INSERT INTO books (title, author, genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction'),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction'),
('A Brief History of Time', 'Stephen Hawking', 'Science'),
('1984', 'George Orwell', 'Dystopian'),
('The Art of War', 'Sun Tzu', 'Philosophy');
