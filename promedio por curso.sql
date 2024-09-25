USE `university-project-schema`;

SELECT 
c.courses_name AS "Course",
AVG(g.grades_obtained) AS "Average Grade Course"
FROM courses c
JOIN grades g
ON g.grades_courses_id = c.courses_id GROUP BY 1 ORDER BY AVG(g.grades_obtained) ASC