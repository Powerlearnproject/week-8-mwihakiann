-- student info and their courses
SELECT s.name, s.age, r.region_name, c.course_name, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Regions r ON s.region_id = r.region_id;

-- average grade by regions
SELECT r.region_name, AVG(e.grade) AS avg_grade
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Regions r ON s.region_id = r.region_id
GROUP BY r.region_name;

-- top perfoming students
SELECT s.name, c.course_name, e.grade
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE e.grade > 85
ORDER BY e.grade DESC;
