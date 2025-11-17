-- Count of students per course
SELECT c.CourseName, COUNT(e.StudentID) AS TotalStudents
FROM Courses c
LEFT JOIN Enrollment e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;

-- Average grade per course (assuming grades as letters converted to points)
-- For simplicity, A=4, B=3, C=2, D=1
SELECT c.CourseName,
       AVG(CASE e.Grade
               WHEN 'A' THEN 4
               WHEN 'B' THEN 3
               WHEN 'C' THEN 2
               WHEN 'D' THEN 1
               ELSE 0
           END) AS AvgGrade
FROM Courses c
LEFT JOIN Enrollment e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;

-- Create a view of Student Enrollments
CREATE VIEW StudentCourseView AS
SELECT s.Name AS StudentName, s.Department, c.CourseName, e.Grade
FROM Students s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID;

-- Query the view
SELECT * FROM StudentCourseView;
