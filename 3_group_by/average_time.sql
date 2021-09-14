SELECT students.name, SUM(assignment_submissions.duration)/count(assignment_submissions.id)
FROM assignment_submissions JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY SUM(assignment_submissions.duration)/count(assignment_submissions.id) DESC