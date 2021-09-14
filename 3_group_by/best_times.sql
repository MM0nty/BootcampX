SELECT students.name, SUM(assignment_submissions.duration)/count(assignment_submissions.id) AS personal_average, SUM(assignments.duration)/count(assignments.id) AS average_duration
FROM assignment_submissions JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY SUM(assignment_submissions.duration)/count(assignment_submissions.id) ASC