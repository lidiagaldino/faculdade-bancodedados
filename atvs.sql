-- Exercicio 1
SELECT * FROM student s INNER JOIN takes t ON s.ID = t.ID;

-- Exercicio 2
SELECT 
    s.ID AS student_id,
    s.name AS student_name,
    COUNT(t.course_id) AS courses_taken
FROM 
    student s
LEFT JOIN 
    takes t ON s.ID = t.ID
WHERE 
    s.dept_name = 'Civil Eng.'
GROUP BY 
    s.ID, s.name
ORDER BY 
    courses_taken DESC;

-- Exercicio 3
CREATE VIEW civil_eng_students AS
SELECT 
    s.ID AS student_id,
    s.name AS student_name,
    s.dept_name AS department,
    COUNT(t.course_id) AS courses_taken
FROM 
    student s
LEFT JOIN 
    takes t ON s.ID = t.ID
WHERE 
   s.dept_name = 'Civil Eng.'
    s.ID, s.name, s.dept_name
ORDER BY 
    courses_taken DESC;