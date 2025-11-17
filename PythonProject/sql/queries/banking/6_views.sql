SELECT * FROM StudentCourseView;

-- Fetch only CS department students from the view
SELECT StudentName, CourseName, Grade
FROM StudentCourseView
WHERE Department = 'CS';