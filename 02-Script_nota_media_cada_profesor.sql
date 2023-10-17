USE university_project_sql_schema;

SELECT 
p.professors_first_name,
p.professors_last_name,
AVG(g.grades_grade) AS nota_media
FROM professors p
LEFT JOIN courses c 
ON p.professors_id = c.courses_professors_id
LEFT JOIN grades g 
ON c.courses_id = g.grades_courses_id
GROUP BY
p.professors_first_name,
p.professors_last_name
ORDER BY
p.professors_first_name;



