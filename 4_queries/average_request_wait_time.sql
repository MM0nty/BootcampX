SELECT SUM(started_at-created_at)/count(assistance_requests.id)
FROM assistance_requests