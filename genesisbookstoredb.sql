CREATE DATABASE GenesisBookStorDB;

USE GenesisBookStorDB;

CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Bio TEXT
);

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(150),
    Genre VARCHAR(50),
    Price DECIMAL(6,2),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);


INSERT INTO Authors (Name, Bio) VALUES
('J.K. Rowling', 'Author of Harry Potter'),
('George Orwell', 'Author of 1984');
('Ngũgĩ wa Thiong’o', 'Kenyan writer and academic'),
('Chinua Achebe', 'Author of Things Fall Apart');


INSERT INTO Books (Title, Genre, Price, AuthorID) VALUES
('Harry Potter', 'Fantasy', 29.99, 1),
('1984', 'Dystopian', 19.99, 2);
('Petals of Blood', 'Political Fiction', 24.99, 3, 1977),
('Things Fall Apart', 'Classic', 21.50, 4, 1958);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100)
);

-- Insert customers
INSERT INTO Customers (FullName, Email) VALUES
('Faith Wanjiku', 'faith@example.com'),
('James Kariuki', 'james@example.com');




CREATE USER 'salesperson'@'localhost' IDENTIFIED BY 'salepass';
GRANT SELECT, INSERT ON GenesisBookStorDB.* TO 'salesperson'@'localhost';
