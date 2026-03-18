-- comment
-- create database
create database datamites_db3;

-- show all the dbs which are available
show databases;

-- select the db
use datamites_db3;

-- create table employee
create table employee
(emp_id varchar(10) primary key,
emp_name varchar(50) not null,
emp_salary int default 20000,
emp_dept varchar(10) not null,
emp_age int check(emp_age>18),
emp_doj date );

-- show all tables in current db
show tables;

-- insert the values in the table - employee
insert into employee values
("ES001","Archana",30000,"hr",20,"2021-12-03");

-- 18_march_2026

show databases; 

-- select the database by using use command
use datamites_db3;

-- show tables
show tables;

-- insert one data
insert into employee values
("ES002","bhavani",65000,"hr",35,"2020-01-02");

-- insert multiple values/data's
insert into employee values
("ES003","CHETAN",85000,"IT",45,"2015-12-12"),
("ES004","Diya",56000,"IT",60,"2015-12-02");

-- how to view the table along with the data
select emp_id,emp_name 
from employee;

-- view the complete table
-- * indicates all the columns
select * 
from employee;


-- 1. check for primary constarint-- give duplicate value in the emp_id
-- check error?
insert into employee values
("ES001","AKSHATHA",40000,"it",25,"2012-12-12");


-- 2.CHECK FOR AGE CONSTARINT,INSERT AGE LESS THAN 18 
-- CHECK ERROR?
insert into employee values
("ES005","POOJA",45000,"IT",15,"2012-12-03");

-- insert the data for the specified column
insert into employee
(emp_id,emp_name,emp_dept,emp_age) values ("ES005","POOJA","SALES",25);

-- VERIFY BY EXECUTING SELECT COMMAND
select * from employee;

-- 3.check for not null constraint- emp_name
-- do not insert emp_name-- error? 
insert into employee (emp_id,emp_dept,emp_age)
values ("ES006","HR",40);

select * from employee;

-- update command
-- 1.update the age of employee to 55 for emp_id is "ES001"

update employee
set emp_age=55
where emp_id="ES001";

-- verify by using select clause
select * from employee;

-- 2.increase the salary of an employee "ES002"
update employee
set emp_salary = emp_salary + 15000 
where emp_id="ES002";

-- 3 increase the salary of an employees who belongs to HR dept
set sql_safe_updates=0;

update employee
set emp_salary=emp_salary+emp_salary*0.25
where emp_dept="hr";

select * from employee;




-- delete command
-- delete the details of an employee who's age is less than 30
delete from employee
where emp_age<30;

-- verify
select * from employee;



-- 3.check for not null constraint- emp_name
-- do not insert emp_name-- error? 
insert into employee (emp_id,emp_dept,emp_age)
values ("ES006","HR",40);

select * from employee;

-- update command
-- 1.update the age of employee to 55 for emp_id is "ES001"

update employee
set emp_age=55
where emp_id="ES001";

-- verify by using select clause
select * from employee;

-- 2.increase the salary of an employee "ES002"
update employee
set emp_salary = emp_salary + 15000 
where emp_id="ES002";

-- 3 increase the salary of an employees who belongs to HR dept
set sql_safe_updates=0;

update employee
set emp_salary=emp_salary+emp_salary*0.25
where emp_dept="hr";

select * from employee;




-- delete command
-- delete the details of an employee who's age is less than 30
delete from employee
where emp_age<30;

-- verify
select * from employee;




























