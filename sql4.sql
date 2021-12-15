SELECT AVG(waga) AS 'srednia waga wikingow'
FROM kreatura
WHERE rodzaj = 'wiking';

SELECT rodzaj, COUNT(rodzaj), AVG(waga)
FROM kreatura
GROUP BY rodzaj;

SELECT rodzaj, AVG(2021-YEAR(dataUr))
FROM kreatura
GROUP BY rodzaj;

SELECT rodzaj, sum(waga)
FROM zasob
GROUP BY rodzaj;

SELECT nazwa, AVG(waga), SUM(ilosc), SUM(waga)
FROM zasob 
GROUP BY nazwa
HAVING SUM(ilosc) >= 4 AND SUM(waga) > 10;

//sprawdzic czy dobrze
SELECT nazwa, COUNT(nazwa)
FROM zasob
GROUP BY nazwa
HAVING SUM(ilosc) > 1;

SELECT kreatura.nazwa, SUM(ekwipunek.ilosc)
FROM kreatura
INNER JOIN ekwipunek ON kreatura.idKreatury = ekwipunek.idKreatury
GROUP BY kreatura.nazwa;

SELECT kreatura.nazwa, zasob.nazwa
FROM kreatura
INNER JOIN ekwipunek ON kreatura.idKreatury = ekwipunek.idKreatury
INNER JOIN zasob ON ekwipunek.idZasobu = zasob.idZasobu
GROUP BY kreatura.nazwa;

SELECT nazwa
FROM kreatura
WHERE idKreatury NOT IN (SELECT idKreatury FROM ekwipunek);

SELECT kreatura.nazwa, zasob.nazwa
FROM kreatura
NATURAL JOIN ekwipunek
INNER JOIN zasob ON ekwipunek.idZasobu = zasob.idZasobu
WHERE kreatura.rodzaj = 'wiking' AND
YEAR(kreatura.dataUr) BETWEEN 1670 AND 1679;

SELECT kreatura.nazwa
FROM kreatura
INNER JOIN ekwipunek ON kreatura.idKreatury = ekwipunek.idKreatury
INNER JOIN zasob ON ekwipunek.idZasobu = zasob.idZasobu
WHERE zasob.rodzaj = 'jedzenie'
ORDER BY kreatura.dataUr DESC
LIMIT 5;

SELECT a.nazwa, b.nazwa
FROM kreatura
a LEFT JOIN kreatura b ON a.idKreatury = b.idKreatury-5;

SELECT kreatura.rodzaj, AVG(zasob.waga * zasob.ilosc)
FROM kreatura
INNER JOIN ekwipunek ON kreatura.idKreatury = ekwipunek.idKreatury
INNER JOIN zasob ON ekwipunek.idZasobu = zasob.idZasobu
WHERE kreatura.rodzaj != 'malpa' AND kreatura.rodzaj != 'waz' AND ekwipunek.ilosc < 30
GROUP BY kreatura.rodzaj;

SELECT kreatura.nazwa, kreatura.dataUr, // nie skonczone