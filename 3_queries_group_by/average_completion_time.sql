SELECT students.name as student, AVG(duration) as average_assignment_duration 
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY AVG(duration) DESC;