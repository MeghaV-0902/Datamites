CREATE DATABASE pu_db;
USE pu_db;

SHOW DATABASES;

CREATE TABLE student (
    roll_no INT PRIMARY KEY NOT NULL,
    stud_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    DOB DATE,
    phone_no INT NOT NULL
);

DESC student;

SELECT * FROM student;

INSERT INTO student VALUES(1,"Megha","Meg@gmail.com","2001-02-09",1234567899);

INSERT INTO student VALUES
(2,"Shu","Shu@gmail.com","2000-02-06",1234567898),
(3,"Babichu","B@gmail.com","2010-05-03",1234567799);

INSERT INTO student VALUES
(4,"Swathi","S@gmail.com","2001-07-31",12348),
(5,"Damon","D@gmail.com","1800-02-12",12799);

SELECT * FROM student;

Drop DATABASE pu_db;