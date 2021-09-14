SELECT SUM(assignment_submissions.duration)
FROM assignment_submissions
JOIN assignments ON assignments.id = assignment_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE 'FEB12'