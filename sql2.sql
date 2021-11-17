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
	
