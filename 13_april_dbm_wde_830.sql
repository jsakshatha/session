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















