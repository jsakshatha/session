show databases;

-- double hypen represents comment

-- step 1: view all the databases in the server
show databases;

-- step 2: create new database
create database sample_db;

-- step 3 : verify the db is exist or not?
show databases;
-- 15TH April 2026

-- step 1: view all the db
show databases;

-- step 2: create new databases
create database sample_db;

-- step 3: select the the database from the list
use sample_db;

-- step 4: delete the database
drop database sample_db;

-- verify
show databases;



-- 1.create new database 
create database company_db1;

-- verify db is exist or not?
show databases;

-- 2. select the database
use company_db1;

-- 3.create table with constraints
create table employee
(emp_id varchar(20) primary key,
emp_name varchar(25) not null,
emp_salary int default 20000,
emp_dept varchar(10) not null,
emp_age int check(emp_age>21),
emp_doj date);


-- verify that table is created or not 
show tables;

-- insert only record in employee table
insert into employee values
("es001","amit",50000,"hr",25,"2020-12-03");

-- insert multiple records
insert into employee values
("es002","bhavya",60000,"IT",24,"2022-11-23"),
("es003","chetan",15000,"sales",22,"2023-12-11"),
("es004","diya",20000,"sales",23,"2024-12-11");


-- view the entire table with field name and values
select emp_name,emp_age from employee;

select * from employee;

-- verify the constraint
-- 1. check for primary key constraints-insert duplicate value in emp_id--error
insert into employee values
("es001","raj",90000,"HR",24,"2024-12-03");

-- 2.check for not null constraint in emp_name-insert null in emp_name--error
insert into employee values
("es005",null,90000,"HR",24,"2024-12-03");

-- 3.check age constarint in emp_age-insert 15 in emp_age-error
insert into employee values
("es006","pavan",90000,"HR",15,"2024-12-03");





-- 16TH April 2026

-- 1.view the databases
show databases;

-- check company_db is present or not?

-- 2.select the database

use company_db;

-- 3.view all the tables
show tables;

-- view the table with data
select * from employee;


-- 4.insert records only for the specified column
-- check for the default constraint for emp_salary column

insert into employee(emp_id,emp_name,emp_dept)
values("cs001","anjali","HR");

-- verify the salary of anjali
select * from employee;

-- check for not null constraint for emp_dept,insert null value to emp_dept--error
insert into employee(emp_id,emp_name,emp_dept)
values("cs002","bhavani",null);



-- part :2
-- alter the structure of the table(add new column,delete column,rename,change tghe datatype)

-- 1.view the structure of the table
describe employee;

-- 2.add new column emp_gender and apply not null constraint
alter table employee
add emp_gender varchar(10) not null;

-- verify 
describe employee;
select * from employee;

-- 3.add multiple columns
alter table employee
add emp_state varchar(20),
add emp_status varchar(10);


-- verify 
describe employee;
select * from employee;

show tables;
show databases;
--
-- 4.delete emp_state colummn

alter table employee
drop column emp_state;

-- verify
select * from employee;


-- 5. rename the field name
alter table employee 
change emp_dept department varchar(20) ;

-- verify--emp_dept is changed to department and number char is changed to 20
describe employee;

-- update command

-- without using P.K if we try too update the table it throws safe update error
-- safe update error is default error
-- by default mysql workbench has enabled safe update mode(updating data thru P.K)

-- to disbale safe update mode
set sql_safe_updates=0;

update employee
set emp_status="Active";


-- update the data for the specific record
-- update the age of an employee who's name is anjali

update employee set emp_age=30 where emp_name="anjali";

-- update the emp_status as inactive for those who belongs to sales dept



select * from employee;









-- 20-April-2024

show databases;

use company_db;

show tables;

select * from employee;

--  delete an employee who's id is es001
delete from employee where emp_id="es001";

-- verify
select * from employee;

-- delete all the employees who belongs to "sales" dept
set sql_safe_updates=0;

delete from employee where department="sales";

-- verify
select * from employee;

-- rename the table name
alter table employee rename to employee_info;
-- error for old name
select * from employee;





-- refer sql_datamitesdb_queries and execute all commands
show tables;

-- 1.find the max salary from employee table

select max(emp_salary)from employee;

-- 2.find the number of employees 

select count(emp_id) from employee;

-- 3.find the number of employees in each dept
select count(emp_id),dept_name
from employee
group by dept_name;

-- 4. retreive only the dept names(unique)

select distinct(dept_name) from employee;
-- 5. sort the salary in ascending order

select emp_salary
from employee
order by emp_salary asc;

-- 6. find the details of employees based on highest salary to lowest salary

select *
from employee
order by emp_salary desc;

-- 7. retreive 1st 3 records / first 3 rows from employee table
select * 
from employee
limit 3;

-- 8.reterive last 2 records
select *
from employee
order by emp_id desc
limit 2;

-- 9.find the details of the employees who belongs to HR dept
select *
from employee
where dept_name="HR";

-- 10.find the details of the employees who belongs to HR dept and salary is greater than 35k
select * 
from employee 
where dept_name="HR" and emp_salary>35000;

-- 11.find the details of the employees who belongs to HR and sales dept

-- solution 1: by using or operator
Select * 
from employee 
where dept_name = "HR" or dept_name = "sales";

-- solution 2: by using in operator
Select * 
from employee 
where dept_name in ("hr","sales");

-- 12. find the details of employee where the salary is between 25k and  60K
select *
from employee
where emp_salary between 25000 and 60000;


















-- returns the table 
select * from employee_info;




-- 21ST APRIL 2025
show databases;

use datamites_db;

show tables;

-- 13.find the details of the employee who is getting max salary by using orderby and limit
select *
from employee
order by emp_salary desc
limit 1;


-- 14.find the details of the employee who's name starts with letter A
-- % represents any number of characters after A
select *
from employee
where emp_name like "z%";

-- 16.find the details of the employee who's name ENDS with letter A
select *
from employee
where emp_name like "%a";


-- Sub Queries
-- 17.find the details of the employee who is getting max salary

select max(emp_salary) from employee;

select *
from employee
where emp_salary=90000;

-- subqueries
select *
from employee
where emp_salary=(select max(emp_salary) from employee);




select *
from employee
where emp_salary=(select max(emp_salary)from employee);

select max(emp_salary),emp_name,emp_id
from employee;

select avg(emp_salary) from employee;

-- find the details of the employee who is getting second highest salary 
select *
from employee
where emp_salary<(select max(emp_salary)from employee)
order by emp_salary desc
limit 1;


select * from department;
select * from student;


-- inner join--- common data which is there in both table
select * 
from student as s
left join department as d 
on s.dept_id = d.dept_id;







select s.s_name,d.dept_id,d.dept_name
from student as s
inner join department as d 
on s.dept_id = d.dept_id;


-- 22-APRIL-2026

USE datamites_db;









-- number of employess in each dept
select count(emp_id),dept_name
from employee
group by dept_name;


select *,
count(emp_id) over(partition by dept_name) as count_emp
from employee;




show tables;












































