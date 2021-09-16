SELECT teachers.name, count(assistance_requests.id)
FROM assistance_requests JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name='Waylon Boehm'
GROUP BY teachers.name