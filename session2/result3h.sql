SELECT p.name, COUNT(DISTINCT a.mid) AS num_movies 
FROM Person p, Acts a, Directs d 
WHERE p.pid = d.pid AND p.pid = a.pid 
GROUP BY p.name 
HAVING COUNT(a.mid) > 0 
ORDER BY COUNT(a.mid) DESC LIMIT 3;