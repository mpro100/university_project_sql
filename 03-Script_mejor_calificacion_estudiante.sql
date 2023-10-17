USE university_project_sql_schema;

SELECT 
s.students_first_name,
s.students_last_name,
MAX(g.grades_grade) AS mejor_nota
FROM students s
LEFT JOIN grades g
ON s.students_id = g.grades_students_id
GROUP BY
s.students_first_name,
s.students_last_name
ORDER BY
s.students_first_name;