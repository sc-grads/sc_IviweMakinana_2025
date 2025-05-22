ALTER TABLE tblTransaction
ADD DateOfEntry datetime

ALTER TABLE tblTransaction
ADD CONSTRAINT defDateOfEntry DEFAULT GETDATE() FOR DateOfEntry;

DELETE FROM tblTransaction WHERE EmployeeNumber < 3

INSERT INTO tblTransaction (Amount, DateOfTransaction, EmployeeNumber)
VALUES (1, '2014-01-01', 1)

INSERT INTO tblTransaction (Amount, DateOfTransaction, EmployeeNumber, DateOfEntry)
VALUES (2, '2014-01-02', 1, '2013-01-01')

SELECT * FROM tblTransaction WHERE EmployeeNumber < 3

CREATE TABLE tblTransaction2
(
    Amount smallmoney NOT NULL,
    DateOfTransaction smalldatetime NOT NULL,
    EmployeeNumber INT NOT NULL,
    DateOfEntry datetime NULL CONSTRAINT tblTransaction2_defDateOfEntry DEFAULT GETDATE()
)

INSERT INTO tblTransaction2 (Amount, DateOfTransaction, EmployeeNumber)
VALUES (1, '2014-01-01', 1)