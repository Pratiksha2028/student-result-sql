-- Create Database
CREATE DATABASE StudentDB;
USE StudentDB;

-- Table: Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Class VARCHAR(10),
    Age INT
);

-- Table: Subjects
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);

-- Table: Marks
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    SubjectID INT,
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

-- Sample Data: Students
INSERT INTO Students VALUES
(1, 'Pratiksha Pande', 'MCA', 22),
(2, 'Priya Sharma', 'MBA', 21),
(3, 'Sakshi Jadhav', 'BCA', 20);

-- Sample Data: Subjects
INSERT INTO Subjects VALUES
(101, 'Java'),
(102, 'HR'),
(103, 'PYTHON');

-- Sample Data: Marks
INSERT INTO Marks (StudentID, SubjectID, Marks) VALUES
(1, 101, 78),
(1, 102, 85),
(1, 103, 90),
(2, 101, 88),
(2, 102, 82),
(2, 103, 87),
(3, 101, 68),
(3, 102, 75),
(3, 103, 70);
