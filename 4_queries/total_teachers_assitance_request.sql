SELECT count(teacher_id) as total_assistances,
teachers.name
FROM assistance_requests
JOIN teachers On teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name
