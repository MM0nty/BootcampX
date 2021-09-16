SELECT teachers.name, cohorts.name, COUNT(assistance_requests.teacher_id)
FROM assistance_requests JOIN teachers ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name, assistance_requests.teacher_id
ORDER BY teachers.name