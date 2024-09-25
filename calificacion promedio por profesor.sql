USE `university-project-schema`;

SELECT 
p.professors_name AS "Professor",
AVG(g.grades_obtained) AS "Average Grade"
FROM professors p
JOIN grades g
ON g.grades_professors_id = p.professors_id GROUP BY 1



