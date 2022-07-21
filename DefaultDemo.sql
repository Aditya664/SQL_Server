-- Default constraint in sql server

USE master;
GO

/*
Create New Database
*/

DROP DATABASE IF EXISTS SelfLearn;
CREATE DATABASE SelfLearn;
GO

/*
Use Database
*/

USE SelfLearn;
GO

/*
Create Schema
*/

CREATE SCHEMA [Learn];
GO
/*
Create tblGender table
*/

DROP TABLE IF EXISTS tblGender;
CREATE TABLE tblGender(
ID INT Primary key,
Gender VARCHAR(50)
);


/*
Create tblPerson table
*/

DROP TABLE IF EXISTS tblPerson;
CREATE TABLE tblPerson(
ID INT Primary key,
Name VARCHAR(50),
Email VARCHAR(50),
GenderID INT
);

-- Insert Values in both tables.

INSERT INTO tblGender VALUES(1,'Male');
INSERT INTO tblGender VALUES(2,'Female');
INSERT INTO tblGender VALUES(3,'unknown');

INSERT INTO tblPerson VALUES(1,'Karn','k@gmail.com',1);
INSERT INTO tblPerson VALUES(2,'Dhanaji','k@gmail.com',2);
INSERT INTO tblPerson VALUES(3,'Himmat','k@gmail.com',1);
INSERT INTO tblPerson VALUES(4,'Uddhav','k@gmail.com',2);
INSERT INTO tblPerson VALUES(5,'Neha','k@gmail.com',1);
INSERT INTO tblPerson (id,name,email) VALUES(6,'Deepak','k@gmail.com');


SELECT * FROM tblPerson;
SELECT * FROM tblGender;

-- Join both tables.
SELECT 
tp.ID,
tp.Name,
tp.Email,
tg.Gender
FROM
tblPerson tp INNER JOIN tblGender tg ON tp.GenderID = tg.ID;

-- Alter table tblPerson 
ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblPerson_GenderId
DEFAULT 3 FOR GenderID;

INSERT INTO tblPerson (id,name,email) VALUES(7,'Deepak','k@gmail.com');
INSERT INTO tblPerson (id,name,email) VALUES(8,'Divyas','k@gmail.com');

SELECT * FROM tblPerson;
SELECT * FROM tblGender;