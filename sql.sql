create database NewEnglishBoardingSchool;
use NewEnglishBoardingSchool;

CREATE TABLE Class (
    Class_id VARCHAR(255) PRIMARY KEY,
    Class VARCHAR(255)
);

CREATE TABLE Fees (
    Fees_id INT PRIMARY KEY,
    Class_id VARCHAR(255),
    Amount VARCHAR(100),
    FOREIGN KEY (Class_id) REFERENCES Class(Class_id)
);


CREATE TABLE Payment (
    Payment_id INT PRIMARY KEY,
    Student_id INT,
    Amount VARCHAR(50),
    PaymentDate DATE
);

CREATE TABLE Subject (
    Subject_id INT PRIMARY KEY,
    SubjectName VARCHAR(255),
    Class_id VARCHAR(255),
    FOREIGN KEY (Class_id) REFERENCES Class(Class_id)
);

create table province(
	province_id int primary key,
    province_name VARCHAR(255)
);

create table address(
	address_id int primary key,
	City VARCHAR(255),
    WardNo INT,
    District VARCHAR(255),
    province_id int,
    FOREIGN KEY (province_id) REFERENCES province(province_id)
);

CREATE TABLE Teachers (
    Teacher_id INT PRIMARY KEY,
    TeacherName VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(255),
    Phone VARCHAR(255),
    Salary VARCHAR(255),
    address_id INT,
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE Guardians (
    guardian_id INT PRIMARY KEY,
    GuardianName VARCHAR(255),
    GuardianPhone VARCHAR(20)
);

CREATE TABLE Students (
    Student_id INT PRIMARY KEY,
    StudentName VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(50),
    guardian_id INT,
    address_id INT,
    FOREIGN KEY (guardian_id) REFERENCES Guardians(guardian_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);


CREATE TABLE Attendance (
    Attendance_id INT PRIMARY KEY,
    Student_id INT,
    Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Student_id) REFERENCES Students(Student_id)
);
    

CREATE TABLE Results (
    Result_id INT PRIMARY KEY,
    Student_id INT,
    Name VARCHAR(255),
    Date DATE,
    Score INT,
    FOREIGN KEY (Student_id) REFERENCES Students(Student_id)
);

CREATE TABLE Events (
    Event_id INT PRIMARY KEY,
    EventName VARCHAR(255),
    Date DATE,
    Location VARCHAR(255)
);

CREATE TABLE Author(
	book_id int primary key,
    BookTitle VARCHAR(255),
    Author VARCHAR(255)
);
CREATE TABLE LibraryRecords (
    Record_id INT PRIMARY KEY,
    Student_id INT,
    Book_id INT,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (Student_id) REFERENCES Students(Student_id),
    FOREIGN KEY (Book_id) REFERENCES Author(Book_id)
);


INSERT INTO Class (Class_id, Class)
VALUES
    ('10', '10'),
    ('9', '9'),
    ('8', '8'),
    ('7', '7'),
    ('6', '6'),
    ('5', '5'),
    ('4', '4'),
    ('3', '3'),
    ('2', '2'),
    ('1', '1'),
    ('KG', 'KG'),
    ('NUR', 'Nursary');

select * from Class;

INSERT INTO Fees 
VALUES 
    (1, 'NUR', 'NPR 1,500'),
    (2, 'KG', 'NPR 2,000'),
    (3, '1', 'NPR 2,500'),
    (4, '2',  'NPR 3,000'),
    (5, '3',  'NPR 3,500'),
    (6, '4', 'NPR 4,000'),
    (7, '5',  'NPR 4,500'),
    (8, '6',  'NPR 5,000'),
    (9, '7',  'NPR 5,500'),
    (10, '8',  'NPR 6,000'),
    (11, '9',  'NPR 6,500'),
    (12, '10',  'NPR 7,000');

select * from Fees;

INSERT INTO Payment 
VALUES 
    (1, 101, 'NPR 5,500', '2080-04-10'),
    (2, 102, 'NPR 6,500', '2080-04-10'),
    (3, 103, 'NPR 5,500', '2080-04-05');

select * from Payment;

INSERT INTO Subject 
VALUES 
    (1, 'Mathematics', 10),
    (2, 'Science', 10),
    (3, 'English', 9),
    (4, 'Social Studies', 9);

select * from Subject;

INSERT INTO province 
VALUES
	(1,'Lumbini');
    
Select * from province;    
INSERT INTO address (address_id, City, WardNo, District, province_id) VALUES
(1, 'Tansen', 8, 'Palpa', 1),
(2, 'Bhairahawa', 1, 'Rupandehi', 1),
(3, 'Butwal', 12, 'Rupandehi', 1),
(4, 'Butwal', 10, 'Rupandehi', 1),
(5, 'Taulihawa', 5, 'Kapilvastu', 1),
(6, 'Siddharthanagar', 12, 'Rupandehi', 1);


select * from address;


INSERT INTO Teachers (Teacher_id, TeacherName, DateOfBirth, Gender, Phone, Salary, address_id) VALUES
(1, 'Ashok Aryal', '1980-09-05', 'Male', '9867389098', 'NPR 40,000', 1),
(2, 'Basanta Poudel', '1975-04-25', 'Male', '9876787887', 'NPR 45,000', 2),
(3, 'Lekhnath Panta', '1985-01-28', 'Male', '9856788993', 'NPR 60,000', 3),
(4, 'Roman Shrestha', '1990-06-02', 'Male', '9843678567', 'NPR 55,000', 3),
(5, 'Ritika Banjade', '1992-05-11', 'Female', '9841678939', 'NPR 50,000', 1);



select * from Teachers;

INSERT INTO Guardians (guardian_id, GuardianName, GuardianPhone) VALUES
(1, 'Gita Acharya', '9847011111'),
(2, 'Ram Sharma', '9816412121'),
(3, 'Hari Rai', '9867066700');

select * from Guardians;


INSERT INTO Students  VALUES
 (1, 'Ramesh Acharya', '2005-03-15', 'Male', 1, 4),
 (2, 'Sita Sharma', '2006-06-20', 'Female', 2, 5),
 (3, 'Asha Rai', '2004-11-10', 'Female', 3, 6);


select * from students;


INSERT INTO Attendance 
VALUES 
    (1, 1, '2023-07-01', 'Present'),
    (2, 2, '2023-07-02', 'Absent'),
    (3, 3, '2023-07-03', 'Present'),
    (4, 1, '2023-07-01', 'Present'),
    (5, 2, '2023-07-02', 'Present'),
    (6, 3, '2023-07-03', 'Absent');
    

select * from Attendance;-- 

INSERT INTO Results 
VALUES 
    (1, 1, 'Mathematics', '2023-06-15', 85),
    (2, 2, 'Science', '2023-06-20', 78),
    (3, 3, 'Nepali', '2023-06-25', 92),
    (4, 2, 'Sanskrit', '2023-06-15', 78),
    (5, 3, 'English', '2023-06-20', 90),
    (6, 3, 'Mathematics', '2023-06-25', 65);

select * from Results;

INSERT INTO Events 
VALUES 
    (1, 'Annual Day', '2023-08-10', 'School Grounds'),
    (2, 'Sports Day', '2023-09-20', 'Sports Complex'),
    (3, 'Science Fair', '2023-10-15', 'Science Lab'),
    (4, 'Parent-Teacher Meeting', '2023-07-30', 'School Auditorium');
    
select * from Events;

INSERT INTO Author
Values
	(1,'Java the complete reference (12th edition)', 'Herbert Schildt'),
    (2,'Spidering HACKS', 'Tara Calishain'),
    (3, 'Windows System Programming', 'Johnson M. Hart'),
    (4,'C# in Depth', 'Jon Skeet');
    
Select * from Author;


INSERT INTO LibraryRecords (Record_id, Student_id, Book_id, IssueDate, ReturnDate) VALUES
    (1, 3, 1, '2023-07-05', '2023-07-20'),
    (2, 2, 2, '2023-06-30', '2023-07-10'),
    (3, 3, 3, '2023-07-10', '2023-07-25'),
    (4, 3, 4, '2023-07-15', '2023-07-25');

select * from LibraryRecords;

UPDATE Fees
SET amount = CONCAT('NPR ',
    CAST(REPLACE(REPLACE(amount, 'NPR ', ''), ',', '') * 1.2 AS DECIMAL(10, 2)));


select * from Fees;