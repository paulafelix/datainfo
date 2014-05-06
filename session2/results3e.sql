	SELECT p.name AS name, MIN(m.year) AS first_year
	FROM Person p, Directs d, Genre g, Movie m 
	WHERE p.pid = d.pid AND d.mid = g.mid AND g.genre = "Action" AND g.mid = m.mid 
	GROUP BY p.pid 
	HAVING COUNT(p.name) >= 2;