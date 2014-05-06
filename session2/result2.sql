INSERT INTO F VALUES ("ABC", "EF", false, "Doordat je E weet weet je ook D, dus ABC is superkey"), 
("E", "D", true, "Als je E en D weet weet je ook A, maar dat maakt E nog geen superkey"), 
("D", "A", true, "Je weet alleen D en A, dus geen superkey");

INSERT INTO F1 VALUES ("E", "D", false, "E is superkey omdat je dan ook D weet");
INSERT INTO F2 VALUES ("ABC", "EF", false "Als je ABC weet weet je ook EF, dus superkey"), ("E", "A", true, "Als je E en A weet weet je B, C en F nog niet, dus geen superkey");
