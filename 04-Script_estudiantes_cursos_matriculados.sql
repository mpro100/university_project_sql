USE university_project_sql_schema;

SELECT
s.students_first_name,
s.students_last_name,
c.courses_name
FROM
students s
RIGHT JOIN grades g 
ON s.students_id = g.grades_students_id
RIGHT JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY
c.courses_name;
