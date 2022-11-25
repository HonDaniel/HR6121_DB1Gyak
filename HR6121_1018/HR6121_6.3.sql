CREATE TABLE tanfolyam (tkod INT, ar INT, tipus CHAR(30), megnevezes
VARCHAR(100), PRIMARY KEY (tkod));
CREATE TABLE resztvevo (tajszam INT(13), nev CHAR(30), lakcim
VARCHAR(100), PRIMARY KEY (tajszam));
CREATE TABLE befizetes (diak INT, kurzus INT, befizetes INT,
FOREIGN KEY (diak) REFERENCES resztvevo(tajszam), FOREIGN KEY (kurzus)
REFERENCES tanfolyam(tkod);
