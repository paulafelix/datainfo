CREATE TABLE Bestelling (
isbn int,
aantal int,
PRIMARY KEY (isbn, aantal),
FOREIGN KEY isbn REFERENCES Boek(isbn)
);

CREATE TRIGGER nieuwBestelling
    AFTER INSERT ON Boek
    WHEN NOT EXISTS(SELECT * FROM OLD.Boek WHERE Inserted.auteur = OLD.auteur)
    INSERT INTO Bestelling VALUES (Inserted.isbn, 1);

