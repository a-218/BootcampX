SELECT assignments.id, name, day, chapter, count(assistance_requests.id) as total_requests
FROM assignments
JOIn assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER By total_requests DESC;

