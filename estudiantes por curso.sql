USE `university-project-schema`;

SELECT 
s.students_name AS "Student", 
c.courses_name AS "Course"
FROM students s
JOIN grades g
ON g.grades_studens_id = students_id 
JOIN courses c
ON g.grades_courses_id = c.courses_id ORDER BY s.students_name 

