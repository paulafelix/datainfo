CREATE TABLE "Boek" (
	isbn int, 
	titel varChar(255), 
	auteur varChar(255),
	PRIMARY KEY (isbn),
	);

CREATE TABLE "Exemplaar" (
	isbn int, 
	volgnr int, 
	gewicht int, 
	kast varChar(255),
	PRIMARY KEY (isbn, volgnr), 
	FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON DELETE CASCADE ON UPDATE CASCADE
	);