USE SelfLearn;
GO

ALTER TABLE tblPerson
ADD Age INT;

SELECT * FROM tblPerson;

ALTER TABLE tblPerson
ADD CONSTRAINT Ch_tblPerson_age
CHECK (Age > 0 AND Age < 100);

INSERT INTO tblPerson VALUES(9,'Sam','S@gmak.fgg',3,666);
--  ERRor

INSERT INTO tblPerson VALUES(11,'Sam','S@gmak.fgg',3,66);
-- Success

SELECT * FROM tblPerson;
