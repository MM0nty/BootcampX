SELECT assignments.id, day, chapter, name, COUNT(assistance_requests.id)
FROM assistance_requests JOIN assignments ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY COUNT(assistance_requests.id) DESC