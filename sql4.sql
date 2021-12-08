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

