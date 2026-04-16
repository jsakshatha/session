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
create database company_db;

-- verify db is exist or not?
show databases;

-- 2. select the database
use company_db;

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














