SELECT p.name FROM Person p, Writes w
WHERE p.pid = w.pid AND NOT EXISTS (SELECT * FROM Movie m, Directs d, Writes w1 WHERE m.mid = w1.mid AND p.pid = w1.pid AND d.mid = m.mid);
-- Dus je selecteert de naam van een schrijver, waarvoor er geen film bestaat die hij geschreven heeft waar een regisseur voor is.