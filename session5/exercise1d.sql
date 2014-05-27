SELECT Count(isbn) FROM Exemplaar WHERE isbn = 12345; -- Aantal exemplaren van boek met isbn 12345
UPDATE Boek SET isbn = 34567 WHERE isbn = 12345; -- Aangenomen dat er nog geen boek met isbn 34567 is.
SELECT Count(isbn) FROM Exemplaar WHERE isbn = 34567; -- Check of exemplaar-tabel goed mee-geupdate is, moet hetzeflde aantal uitkomen als hierboven.