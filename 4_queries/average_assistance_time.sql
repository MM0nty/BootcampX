SELECT SUM(completed_at-started_at)/COUNT(assistance_requests.id)
FROM assistance_requests