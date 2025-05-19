CREATE TABLE tblPrimeNumbers (
    intField INT
);
INSERT INTO tblPrimeNumbers (intField) VALUES (2);
INSERT INTO tblPrimeNumbers (intField) VALUES (3);
INSERT INTO tblPrimeNumbers (intField) VALUES (5);
INSERT INTO tblPrimeNumbers (intField) VALUES (7);
INSERT INTO tblPrimeNumbers (intField) VALUES (11);
SELECT * FROM tblPrimeNumbers;
DELETE FROM tblPrimeNumbers;
DELETE FROM tblPrimeNumbers;

CREATE TABLE tblPrimeNumbers2 (
    intField INT
);

INSERT INTO tblPrimeNumbers2 (intField) VALUES (2);
INSERT INTO tblPrimeNumbers2 (intField) VALUES (3);
INSERT INTO tblPrimeNumbers2 (intField) VALUES (5);
INSERT INTO tblPrimeNumbers2 (intField) VALUES (7);
INSERT INTO tblPrimeNumbers2 (intField) VALUES (11);

SELECT * FROM tblPrimeNumbers2;


DELETE FROM tblPrimeNumbers2;


DROP TABLE tblPrimeNumbers2;