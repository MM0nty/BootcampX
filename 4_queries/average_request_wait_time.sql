SELECT SUM(started_at-created_at)/COUNT(assistance_requests.id)
FROM assistance_requests