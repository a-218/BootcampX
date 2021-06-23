SELECT AVG(difference) as average_assistance_request_duration
FROM (SELECT completed_at-started_at as difference
FROM assistance_requests) as table2