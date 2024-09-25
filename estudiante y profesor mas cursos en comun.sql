USE `university-project-schema`;

SELECT 
s.students_name AS "Student",
p.professors_name AS "Professor",
COUNT(g.grades_professors_id) AS "Student Same Professor" 
FROM students s
JOIN grades g
ON g.grades_studens_id = s.students_id
JOIN professors p
ON g.grades_professors_id = p.professors_id 
GROUP BY g.grades_professors_id, g.grades_studens_id
HAVING COUNT(g.grades_professors_id) = (SELECT MAX(countprofessor.totalprofessor) 
FROM 
(SELECT COUNT(g.grades_professors_id) AS totalprofessor 
FROM grades g 
GROUP BY g.grades_professors_id, g.grades_studens_id)countprofessor)


