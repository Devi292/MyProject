-- Insert Students
INSERT INTO Students (StudentID, Name, Age, Department, Email) VALUES
(1, 'Devi', 22, 'CS', 'devi@example.com'),
(2, 'Ramesh', 21, 'IT', 'ramesh@example.com'),
(3, 'Anita', 23, 'CS', 'anita@example.com');

-- Insert Courses
INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(101, 'Database Systems', 4),
(102, 'Data Structures', 3),
(103, 'Web Development', 3);

-- Insert Enrollment
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, Grade) VALUES
(1, 1, 101, 'A'),
(2, 1, 102, 'B'),
(3, 2, 101, 'B'),
(4, 3, 103, 'A');
