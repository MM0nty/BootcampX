SELECT cohorts.name, SUM(completed_at-started_at)/COUNT(assistance_requests.id)
FROM assistance_requests JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY SUM(completed_at-started_at)/COUNT(assistance_requests.id) ASC