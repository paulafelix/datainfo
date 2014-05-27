SELECT Count(isbn) FROM Exemplaar WHERE isbn = 34567; -- Aantal exemplaren van boek met ISBN 34567
DELETE FROM Boek WHERE isbn = 34567; -- Verwijder boeken met ISBN 34567.
SELECT Count(isbn) FROM Exemplaar WHERE isbn = 34567; -- Check of exemplaren ook verwijderd zijn, hier moet 0 uitkomen.