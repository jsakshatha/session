Drop database  if exists datamites_db;

create database datamites_db;
use datamites_db;

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

CREATE TABLE department (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(30),
dept_head varchar(20)
);
CREATE TABLE student (
s_id INT PRIMARY KEY,
s_name VARCHAR(30),
s_age INT,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


INSERT INTO department VALUES
(10, 'CDS', 'Ram Prasad'),
(20, 'CDA', 'Nithish Kumar'),
(30, 'CDE', 'kishore kamath'),
(40, 'AIE', 'bipin roy'),
(50, 'CS', 'lohith reddy'),
(60, 'IOT', 'Sarvesh Yadav');

select * from department;

INSERT INTO student VALUES
(101, 'John', 30, 10),
(102, 'Mary', 45, 20),
(103, 'Ravi', 50, 20),
(104, 'Anita', 40, 30),
(105, 'Suresh', 35, NULL),
(106, 'Neha', 28, 10),
(107, 'Arjun', 16, 20),
(108, 'Kiran', 32, 40),
(109, 'Pooja', 28, 50),
(110, 'Amit', 22, NULL);

-- student table is child table
select * from student;

-- department table is a parent table
select * from department;
select  * from employee;

-- add the details of the student who belongs to dept_id 90 which is not exist
insert into student values(111,"priya",21,90);

-- 1.what is the maximum salary among all the employees?

select max(emp_salary) from employee;

-- task similarly find min,avg,sum functions


-- 2. how many employees are present or count the number of employees
select count(emp_id) from employee;

-- Note : Aggregate functions- max,min,avg,sum,count

-- 3.find the department names in the employee table
select dept_name from employee;

-- remove the duplicate values from the above output
select distinct(dept_name) from employee;

-- 4.find the number of employees in each department- by using group by

select * from employee;

select dept_name,count(emp_id) 
from employee
group by dept_name;


SHOW TABLES;

-- 

use datamites_db;

-- 5.find the maximum salary from each depart

select dept_name,max(emp_salary) 
from employee 
group by dept_name;

-- 6.sort the employee salaries in ascending order by using order by 
select *
from employee
order by emp_salary asc;

-- 7.sort the employee salaries in descending order by using order by
select *
from employee
order by emp_salary desc;

-- 8. retrieve the first five rows/top 5 rows from the employee table by using limit
select *
from employee
limit 5;








