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

SELECT DISTINCT(rodzaj)
FROM zasob;

SELECT CONCAT(nazwa, ' - ', rodzaj)
FROM kreatura
WHERE rodzaj LIKE 'wi%';

SELECT nazwa, SUM(ilosc*waga)
FROM zasob
WHERE YEAR(dataPozyskania) BETWEEN 2000 AND 2007
GROUP BY nazwa;

SELECT nazwa, SUM(ilosc*waga)*0.30 AS 'odpadek', SUM(ilosc*waga)*0.70 AS 'jedzonko'
FROM zasob
WHERE YEAR(dataPozyskania) BETWEEN 2000 AND 2007
GROUP BY nazwa;

SELECT nazwa, rodzaj
FROM zasob
WHERE rodzaj IS NULL;

SELECT DISTINCT(nazwa)
FROM zasob
WHERE nazwa LIKE 'Ba%' OR nazwa LIKE '%os'
ORDER BY nazwa ASC;