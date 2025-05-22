ALTER TABLE tblTransaction
ADD CONSTRAINT chkAmount CHECK (Amount > -1000 AND Amount < 1000)

INSERT INTO tblTransaction
VALUES (1010, '2014-01-01', 1)

ALTER TABLE tblEmployee
ADD CONSTRAINT chkMiddleName CHECK (REPLACE(EmployeeMiddleName, '.', '') = EmployeeMiddleName OR EmployeeMiddleName IS NULL)

ALTER TABLE tblEmployee
DROP CONSTRAINT chkMiddleName

BEGIN TRAN
INSERT INTO tblEmployee
VALUES (2003, 'A', 'B', 'C', 'D', '2014-01-01', 'Accounts')
SELECT * FROM tblEmployee WHERE EmployeeNumber = 2003
ROLLBACK TRAN 