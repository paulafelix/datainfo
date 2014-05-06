SELECT p.pid FROM Person p WHERE EXISTS (
SELECT * FROM Writes w WHERE p.pid = w.wid AND "written movies are all directorless");