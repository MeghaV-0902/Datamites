create database employee_query;
use employee_query;

create table employee 
(emp_id int primary key ,emp_name varchar(30) , dept_name varchar(20) , emp_salary int );
insert into employee values
(101 , 'John', 'HR' , 10000),
(201,'Mary','Finance',20000),
(301,'Zara','IT',30000),
(401,'Rida','Sales',50000),
(501, 'Ram','HR',40000),
(601,'Varun','IT',70000),
(701,'Araav','HR',60000),
(801,'Joy','IT',90000),
(302,'Arun','Sales',40000),
(403,'Joe','Finance',35000),
(704,"Dia","Finance",26000);

update employee set emp_name="Aarav" where emp_name="Araav";
select * from employee;

-- find the unique values in department
select DISTINCT dept_name from employee;

-- aggregate functions
-- find max salary 
select max(emp_salary) from employee;
-- minimum
select min(emp_salary) from employee;
-- sum
select sum(emp_salary) from employee;
-- average
select avg(emp_salary) from employee;
-- count total number of employees
select count(*) as total from employee;
-- find details of employee belonging to sales dept
select * from employee where  dept_name="Sales";
-- cout emp in sales dept
select count(*)as number_of_emp_in_sales from employee where  dept_name="Sales";
select count(*)as number_of_emp_in_HR from employee where  dept_name="HR";
-- find details of employee who is getting more than 30000 salary
select * from employee where  emp_salary>30000;
-- find names of employee belonging to finance dept
select emp_name from employee where  dept_name="Finance";

-- sorting function sort employees by salary ascending or descending
select emp_name, emp_salary from employee order by emp_salary;
select emp_name, emp_salary from employee order by emp_salary desc;

-- count number of employees in each department
select dept_name, count(dept_name) from employee group by dept_name;

select dept_name, max(emp_salary) from employee group by dept_name;
select dept_name, sum(emp_salary) as total_salary from employee group by dept_name;

-- having clause: departnmens with average salary >55000
select dept_name,avg(emp_salary) from employee group by dept_name having avg(emp_salary)>55000;

-- fnd it emplyees salary >60,000
select * from employee where dept_name="IT" && emp_salary>60000; -- also can use and/ (||)or/ (!)not
select * from employee where dept_name="HR" or dept_name="Sales" order by dept_name;
select * from employee where dept_name in ("Sales","HR"); -- in is for same coloumn where as logical operator are mostly used for different columns

-- display details of employee revieving max salary
select max(emp_salary) from employee;
select * from employee where emp_salary = (select max(emp_salary) from employee); -- sub query
-- find details of employees earning more than average salary
select * from employee where emp_salary>(select avg(emp_salary) from employee);

select * from employee limit 5;

-- find second highest salary
select emp_salary from employee 
where emp_salary<(select max(emp_salary) from employee) 
order by emp_salary desc 
limit 1;

-- to find third highest limit start value, how many values 
select emp_salary from employee 
where emp_salary<(select max(emp_salary) from employee) 
order by emp_salary desc 
limit 1,1;

-- to find fourth highest limit start value, how many values 
select emp_salary from employee 
where emp_salary<(select max(emp_salary) from employee) 
order by emp_salary desc 
limit 2,1;

select emp_salary from employee 
where emp_salary<(select max(emp_salary) from employee) 
order by emp_salary desc ;

-- salary between 30k and 60k
select * from employee where emp_salary between 30000 and 60000;

-- employee name matchers like %,_
select * from employee where emp_name like 'J%';
select * from employee where emp_name like '%N';
select * from employee where emp_name like '_i%a';





select * from employee where emp_salary <
(select max(emp_salary) from employee) order by emp_salary desc limit 1;