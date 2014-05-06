SELECT p.name AS name, COUNT(p.name) AS num_movies
FROM Movie m, Person p, Acts a 
WHERE p.pid = a.pid AND m.mid = a.mid AND p.pid IN (SELECT p.pid FROM Movie m, Person p, Acts a WHERE p.pid = a.pid AND m.mid = a.mid AND m.rating >= 9.0)
GROUP BY p.pid
HAVING COUNT(p.name) >= 4;
