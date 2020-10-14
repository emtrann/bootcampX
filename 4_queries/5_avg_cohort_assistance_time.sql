SELECT cohorts.name as cohort_name, 
avg(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN cohort_name ON cohorts.id = cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohort_name
ORDER BY average_assistance_time;