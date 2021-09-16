SELECT SUM(SELECT SUM(completed_at-started_at)
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name)/cohorts.id
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id