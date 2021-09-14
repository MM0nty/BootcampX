SELECT SUM(assignment_submissions.duration)
FROM assignment_submissions JOIN assignments ON assignments.id = assignment_id
WHERE student_id = 186