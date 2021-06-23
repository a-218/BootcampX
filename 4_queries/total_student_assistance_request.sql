SELECT count(student_id) as total_assistances,
students.name
FROM assistance_requests
JOIN students On students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name
