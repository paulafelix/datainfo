SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN;
SELECT titel FROM Boek WHERE isbn = '0136067018';
SELECT titel FROM Boek WHERE isbn = '0321228383';
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0136067018'; 
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0321228383';
END;