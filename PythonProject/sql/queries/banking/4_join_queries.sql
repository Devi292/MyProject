-- Inner Join: Students with their Courses
SELECT s.Name, c.CourseName, e.Grade
FROM Students s
INNER JOIN Enrollment e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID;

-- Left Join: All Students and their Enrollments
SELECT s.Name, c.CourseName, e.Grade
FROM Students s
LEFT JOIN Enrollment e ON s.StudentID = e.StudentID
LEFT JOIN Courses c ON e.CourseID = c.CourseID;

-- Right Join: All Courses and Enrolled Students
SELECT s.Name, c.CourseName, e.Grade
FROM Students s
RIGHT JOIN Enrollment e ON s.StudentID = e.StudentID
RIGHT JOIN Courses c ON e.CourseID = c.CourseID;
