SELECT p.pid FROM Person p WHERE EXISTS (
SELECT * FROM Writes w WHERE p.pid = w.pid AND 'mid has no director'
);