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

--------------------------------------
ALTER TABLE postac 
	ADD pesel VARCHAR(11) PRIMARY KEY;