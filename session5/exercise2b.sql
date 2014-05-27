-- T2 doet hier een dirty read, bij read2(x) wordt namelijk data gelezen van write1(x), maar T1 is dan nog niet afgerond en het resultaat is dus nog niet gecommit, kan nog rollback komen van T1;
-- Schedule S = read1(x), read1(y), write1(x), read2(x), write2(x), write1(y);  
SELECT titel FROM Boek WHERE isbn = '0136067018';
SELECT titel FROM Boek WHERE isbn = '0321228383';
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0136067018'; 
SELECT titel FROM Boek WHERE isbn = '0136067018';
UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = '0136067018';
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0321228383'; 





-- T1: read1(x); read1(y); write1(x); write1(y). 
-- T2: read2(x); write2(x).

-- read1(x):  	SELECT titel FROM Boek WHERE isbn = '0136067018';
-- read1(y): 	SELECT titel FROM Boek WHERE isbn = '0321228383';
-- write1(x): 	UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0136067018'; 
-- write1(y): 	UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0321228383'; 
-- read2(x): 	SELECT titel FROM Boek WHERE isbn = '0136067018';
-- write2(x): 	UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = ' 0136067018';