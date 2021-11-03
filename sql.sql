CREATE TABLE izba(
	adres_budynku VARCHAR(45), 
	nazwa_izby VARCHAR(45), 
	metraz INT UNSIGNED, 
	wlasciciel INT, 
	FOREIGN KEY(wlasciciel) 
	REFERENCES postac(id_postaci) 
	ON DELETE CASCADE
	);

ALTER TABLE izba
	ADD kolor_izby VARCHAR(45) DEFAULT('czarny') AFTER metraz;
	
INSERT INTO izba VALUES('Jana Kowalskiego 2', 'spizarnia', 45, 'bialy',1);

CREATE TABLE przetwory(
	id_przetworu INT PRIMARY KEY, 
	rok_produkcji YEAR DEFAULT '1954',
	id_wykonawcy INT,
	FOREIGN KEY(id_wykonawcy)
	REFERENCES postac(id_postaci)
	ON DELETE CASCADE,
	zawartosc VARCHAR(100),
	dodatek VARCHAR(45) DEFAULT 'papryczka chilli',
	id_konsumenta INT,
	FOREIGN KEY(id_konsumenta)
	REFERENCES postac(id_postaci)
	ON DELETE CASCADE
	);

------------------------------------------------------------
	
INSERT INTO przetwory VALUES(1, '1655', 1, 'bigos', 'papryczka chilli', 3)

INSERT INTO postac VALUES ('4', 'Brajan', 'wiking', '2013-2-2', '13');
INSERT INTO postac VALUES ('5', 'Wiktor', 'wiking', '2015-4-12', '12');
INSERT INTO postac VALUES ('6', 'Mateusz', 'wiking', '2002-6-8', '23');
INSERT INTO postac VALUES ('7', 'Gerald', 'wiking', '2001-7-3', '24');
INSERT INTO postac VALUES ('8', 'Maciek', 'wiking', '2001-3-7', '24');

CREATE TABLE statek(
		nazwa_statku VARCHAR(45) PRIMARY KEY,
		rodzaj_statku ENUM('kajak', 'okret', 'motorowka'),
		data_wodowania DATE,
		max_ladownosc INT UNSIGNED
	);
	
INSERT INTO statek VALUES('zolta strzala', 'motorowka', '2021-2-4', 256);
INSERT INTO statek VALUES('czarna perla', 'okret', '1999-2-1', 1000);

ALTER TABLE postac
	ADD funkcja VARCHAR(45);
	
UPDATE postac 
	SET funkcja = 'kapitan'
	WHERE id_postac = 1;
	
