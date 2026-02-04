CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE employee (
    EmpId VARCHAR(50) PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    EmpRole VARCHAR(50) NOT NULL,
    Salary INT DEFAULT 20000,
    DOJ DATE,
    Age INT CHECK (Age > 18)
);

INSERT INTO employee VALUES
(1,"Virat","captian",1000000,"2012-02-09",22);

INSERT INTO employee VALUES
(2,"Rohit","Vice captian",500000,"2015-02-09",22),
(3,"Rahul","Wicket Keeper",500000,"2018-02-09",19);

DELETE FROM employee WHERE EmpID ="3";

SELECT * FROM employee;

INSERT INTO employee VALUES
("ES001","Amit","Manager",25000,"2023-02-12",25),
("ES002","Diya","HR",40000,"2022-12-03",28),
("ES003","Charan","HR",30000,"2021-03-04",26),
("ES004","Bharat","Sales",22000,"2020-04-05",19),
("ES005","Gagan","Admin",42000,"2016-03-12",34);


-- primary key contraint - ERROR DUPLICATE ENTRY
INSERT INTO employee VALUES("ES001","Arjun","HR",20000,"2023-12-12",32);

-- not null contraint - ERROR cannot be null/ cdoes not have default
INSERT INTO employee VALUES("ES006",NULL,"HR",20000,"2023-12-12",32);
INSERT INTO employee (EmpId ,EmpRole ,Salary ,DOJ ,Age) VALUES ("ES006","HR",20000,"2023-12-12",32);

-- salary constraint
INSERT INTO employee (EmpId, EmpName,EmpRole ,DOJ ,Age) VALUES ("ES006","Harshith","HR","2023-12-12",32);

-- age constraint - ERROR LESS THAN 18
INSERT INTO employee VALUES("ES008","John","HR",20000,"2023-12-12",5);

-- to update age for diya safemode- use priary key safe mode off use any name
UPDATE employee SET age=30 WHERE EmpId = "ES002";

-- update the salary of bharath to 37000
SET sql_safe_updates=0;
UPDATE employee SET salary=37000 WHERE EmpName="Bharath";

SELECT * FROM employee WHERE EmpRole="HR";

-- delete command - delete employee whos id's is es002
DELETE FROM employee WHERE EmpId="ES002";

-- delete employee whose age is less than 21
DELETE FROM employee WHERE age<21;

-- alter table for changing structure of table
-- add a new coloumn

ALTER TABLE employee add EmpExp int;
-- to rename a column
alter table employee rename COLUMN doj to DOJ;
-- to change datatype of a column
alter table employee modify age int;

-- verfiy using desc- describe command
DESC employee;
SELECT * FROM employee;

Update employee set EmpExp=6 where EmpName="Charan";

-- add multiple coloumns
alter table employee 
add EmpStatus varchar(20), 
add EmpEmail varchar(50);

update employee set EmpStatus="Active";

-- change salary datatype to numneric
alter table employee modify Salary NUMERIC;

-- drop single coloumn and drop multiple columns
alter table employee drop EmpEmail;
alter table employee drop EmpExp, drop EmpStatus;


alter table employee rename to employee_info;
DESC employee_info;





