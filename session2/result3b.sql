SELECT DISTINCT p.pid FROM Person p, Acts a, Movies m WHERE a.pid = p.pid AND m.mid = a.mid AND m.name = 'Back to the Future';
