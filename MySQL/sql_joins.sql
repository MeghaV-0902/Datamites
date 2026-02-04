-- ===================================================
--           joins the table
-- ===================================================


-- Create database joins

create database joins;

use joins;
create table employee
(empid varchar(10) primary key , empname varchar(20) , salary int , deptid varchar(10) );
insert into employee values
('E1' ,'John' , 450000 , 'D1') ,
('E2' ,'Mary',73000,'D2'),
('E3' ,'Steve',86000,'D3'),
('E4' ,'Helen',60000,'D4'),
('E5','Joe',35000,'D7');

select * from employee;

-- Create department table
create table department 
(deptid varchar(10) primary key , deptname varchar(10),dept_head varchar(50));
insert into department values
('D1','HR',"joyal"),
('D2','Admin',"jayant"),
('D3','Sales',"radha"),
('D4','IT',"roshan"),
('D5','HR',"samule");
select * from department;
select * from employee;

-- inner join
select e.empid, e.empname, d.deptid, d.deptname 
from employee e 
inner join department d 
on e.deptid=d.deptid;

-- left join
select e.empid, e.empname, d.deptid, d.deptname 
from employee e 
left join department d 
on e.deptid=d.deptid;

-- right join
select e.empid, e.empname, d.deptid, d.deptname 
from employee e 
right join department d 
on e.deptid=d.deptid;

-- full join
-- select e.empid, e.empname, d.deptid, d.deptname from employee e union department d on e.deptid=d.deptid;
select e.empid, e.empname, d.deptid, d.deptname 
from employee e 
join department d 
on e.deptid=d.deptid;

-- cross join
select e.empid, e.empname, d.deptid, d.deptname 
from employee e 
cross join department d
on e.deptid=d.deptid;

-- full join
(select e.empid, e.empname, d.deptid, d.deptname 
from employee e 
left join department d 
on e.deptid=d.deptid)
union
(select e.empid, e.empname, d.deptid, d.deptname 
from employee e 
right join department d 
on e.deptid=d.deptid);

-- union
SELECT empid, empname FROM employee
UNION
SELECT deptid, deptname FROM department;

select * from employee;


