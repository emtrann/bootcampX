SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN student ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;