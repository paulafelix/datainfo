SELECT p.pid FROM Person p WHERE EXISTS(
            SELECT DISTINCT * FROM Acts a, Movies m
            WHERE a.pid = p.pid
            AND m.mid = a.mid AND m.name = 'Back to the Future'
);