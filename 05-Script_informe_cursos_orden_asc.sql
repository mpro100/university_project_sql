USE university_project_sql_schema;

SELECT 
c.courses_name,
AVG(g.grades_grade) AS nota_media
FROM courses c
RIGHT JOIN grades g
ON c.courses_id = g.grades_courses_id
GROUP BY
c.courses_name
ORDER BY nota_media ASC;