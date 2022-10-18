CREATE TABLE termekek (tkod INT PRIMARY KEY, nev VARCHAR2(50) NOT NULL, ear INT
CHECK (EAR > 0), kategoria CHAR(20)); 