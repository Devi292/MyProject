-- Select all students
SELECT * FROM Students;

-- Select specific columns
SELECT Name, Department FROM Students;

-- Filter students by department
SELECT * FROM Students
WHERE Department = 'CS';

-- Order students by Age descending
SELECT * FROM Students
ORDER BY Age DESC;

-- Count students in each department
SELECT Department, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Department;
