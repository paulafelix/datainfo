CREATE TRIGGER BoekExVerwijder 
    AFTER DELETE ON Boek
    REFERENCING OLD TABLE AS OT NEW TABLE AS NT
    WHEN Exemplaar.isbn = OT.isbn
        DELETE FROM Exemplaar;
