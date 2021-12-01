SELECT AVG(waga) AS 'srednia waga wikingow'
FROM kreatura
WHERE rodzaj = 'wiking';

SELECT rodzaj, COUNT(rodzaj), AVG(waga)
FROM kreatura
GROUP BY rodzaj;

SELECT rodzaj, AVG(2021-YEAR(dataUr))
FROM kreatura
GROUP BY rodzaj;

