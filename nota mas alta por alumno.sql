USE `university-project-schema`;

SELECT 
s.students_name as "Student",
MAX(g.grades_obtained) as "Max grade" 
FROM grades g
JOIN students s
ON g.grades_studens_id = s.students_id
GROUP BY s.students_name
ORDER BY MAX(g.grades_obtained) DESC






