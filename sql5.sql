CREATE TABLE uczestnicy LIKE wikingowie.uczestnicy;

INSERT INTO uczestnicy SELECT * FROM wikingowie.uczestnicy;

CREATE TABLE etapy_wyprawy LIKE wikingowie.etapy_wyprawy;

INSERT INTO etapy_wyprawy SELECT * FROM wikingowie.etapy_wyprawy;

CREATE TABLE sektor LIKE wikingowie.sektor;

INSERT INTO sektor SELECT * FROM wikingowie.sektor;

CREATE TABLE wyprawa LIKE wikingowie.wyprawa;

INSERT INTO wyprawa SELECT * FROM wikingowie.wyprawa;

