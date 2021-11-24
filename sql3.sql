CREATE TABLE kreatura
	AS SELECT * FROM wikingowie.kreatura;
	
CREATE TABLE zasob
	AS SELECT * FROM wikingowie.zasob;
	
CREATE TABLE ekwipunek
	AS SELECT * FROM wikingowie.ekwipunek;
	
SELECT * FROM zasob;

SELECT * FROM zasob
	WHERE rodzaj = "jedzenie";
	
SELECT idZasobu, ilosc FROM ekwipunek
WHERE  idKreatury = 1 OR idKreatury = 3 OR idKreatury = 5;

SELECT * FROM kreatura
WHERE NOT rodzaj = "wiedzma" 
AND udzwig > 50;

SELECT * FROM zasob
WHERE waga BETWEEN 2 AND 5;

SELECT * FROM kreatura
WHERE nazwa LIKE "%or%" 
AND udzwig BETWEEN 30 AND 70;

SELECT * FROM zasob
WHERE MONTH(dataPozyskania) = 7 OR MONTH(dataPozyskania) = 8;

SELECT * FROM zasob
WHERE rodzaj IS NOT NULL 
ORDER BY waga ASC;

SELECT * FROM kreatura
ORDER BY dataUr ASC
LIMIT 5;