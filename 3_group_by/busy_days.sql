SELECT count(id)
FROM assignments
GROUP BY day
HAVING count(id) > 9