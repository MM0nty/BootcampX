SELECT SUM(completed_at-started_at)/count(assistance_requests.id)
FROM assistance_requests