DELETE FROM postac
	WHERE nazwa = 'Gerald';
	
DELETE FROM postac
	WHERE nazwa = 'Maciek';
	
ALTER TABLE przetwory 
	DROP FOREIGN KEY przetwory_ibfk_1;

ALTER TABLE przetwory 
	DROP FOREIGN KEY przetwory_ibfk_2;
	
ALTER TABLE walizka 
	DROP FOREIGN KEY walizka_ibfk_1;
	
ALTER TABLE postac
	DROP PRIMARY KEY;

ALTER TABLE postac 
	ADD pesel VARCHAR(11);

UPDATE postac
	SET pesel = '12345678910'
	WHERE id_postaci = 1;

	UPDATE postac
	SET pesel = '22345678910'
	WHERE id_postaci = 2;
	
UPDATE postac
	SET pesel = '32345678910'
	WHERE id_postaci = 3;
	
UPDATE postac
	SET pesel = '42345678910'
	WHERE id_postaci = 4;
	
	
UPDATE postac
	SET pesel = '52345678910'
	WHERE id_postaci = 5;
	
UPDATE postac
	SET pesel = '62345678910'
	WHERE id_postaci = 6;
	
ALTER TABLE postac
	ADD PRIMARY KEY(pesel);
	
ALTER TABLE postac
	MODIFY COLUMN rodzaj ENUM('wiking', 'ptak', 'kobieta', 'syrena');

INSERT INTO postac VALUES(
	7,
	'Gertruda Nieszczera',
	'syrena',
	'1990-12-11',
	31,
	'jest syrenkom',
	'zolta strzala',
	'72345678910'
);

UPDATE postac
	SET statek = 'czarna perla'
	WHERE nazwa LIKE '%a%';
	
UPDATE statek
	SET max_ladownosc = max_ladownosc * 0.7;
	
ALTER TABLE postac
	ADD CONSTRAINT CHK_wiek CHECK (wiek < 1000);
	
ALTER TABLE postac
	MODIFY COLUMN rodzaj ENUM('wiking', 'ptak', 'kobieta', 'syrena', 'waz');
	
INSERT INTO postac 
	VALUES (8, "Loko", "waz", "1998-07-23", 54, NULL, NULL, "5231421442");

CREATE TABLE marynarz 
	AS SELECT * FROM
	postac WHERE 
	statek = 'czarna perla';
	
ALTER TABLE marynarz
	ADD PRIMARY KEY(pesel);

ALTER TABLE marynarz
	ADD FOREIGN KEY(statek) 
	REFERENCES statek(nazwa_statku) 
	ON DELETE CASCADE;
	
UPDATE postac
	SET statek = NULL;
	
UPDATE marynarz
	SET statek = NULL;
	
DELETE FROM postac 
	WHERE id_postaci = 4;

DELETE FROM marynarz 
	WHERE id_postaci = 4;

DELETE FROM statek;

ALTER TABLE postac 
	DROP FOREIGN KEY postac_ibfk_1;
	
ALTER TABLE maryna 
	DROP FOREIGN KEY marynarz_ibfk_1;
	
DROP TABLE statek;

CREATE TABLE zwierz(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nazwa VARCHAR(45),
	wiek INT
);

INSERT INTO zwierz
	VALUES (1, "Loko", 54);
	
INSERT INTO zwierz
	VALUES (2, "Drozd", 16);