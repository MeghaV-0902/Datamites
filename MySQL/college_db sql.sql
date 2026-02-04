show databases;

-- creating a database for college :create database <database Name>
create database college_db;

use college_db;

create table Student(
roll_num int,
stud_name char(25),
email varchar(50),
dob date
);

desc Student;

select * from Student;


