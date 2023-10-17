USE university_project_sql_schema;

SELECT 
CONCAT(s.students_first_name, " ", s.students_last_name) AS Student,
CONCAT(p.professors_first_name, " ", professors_last_name) AS Profesor,
COUNT(DISTINCT c.courses_id) AS CursosComun
FROM students s
RIGHT JOIN grades g ON s.students_id = g.grades_students_id
RIGHT JOIN courses c ON g.grades_courses_id = c.courses_id
RIGHT JOIN professors p ON c.courses_professors_id = p.professors_id
GROUP BY
s.students_id, p.professors_id
ORDER BY CursosComun DESC;