-- Show all students and their marks
SELECT s.Name, sub.SubjectName, m.Marks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID;

-- Average marks of each student
SELECT s.Name, AVG(m.Marks) AS AverageMarks
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
GROUP BY s.Name;

-- Topper (highest average marks)
SELECT s.Name, AVG(m.Marks) AS AvgMarks
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
GROUP BY s.Name
ORDER BY AvgMarks DESC
LIMIT 1;
