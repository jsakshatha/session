show databases;

-- double hypen with space is represented as comment
-- step1 : create new databases sit_college_db

create database sit_college_db;

-- step 2: verify that the db is created or not?
show databases;

-- step 3: select the db from the list by using use command
use sit_college_db;

-- step 4:check how many tables are there in the selected db
show tables;

-- step 5: create new table employee with the constraints
create table employee
(emp_id varchar(10) primary key,
emp_name varchar(30) not null,
emp_age int check(emp_age>18),
emp_salary int default 25000,
emp_doj date);

-- step 6:verfiy table exist or not?
show tables;


-- step 7: insert only one record
insert into employee values
("es001","amit",35,55000,"2020-12-03");

-- step 8: insert multiple records
insert into employee values
("es002","bharat",40,65000,"2000-11-21"),
("es003","charan",25,50000,"2005-12-12"),
("es004","diya",20,45000,"2021-12-12");


-- step 9: view the table along with the data
select * from employee;

-- step 10: information about table
describe employee;

-- step 11: insert the datas only for specified column
insert into employee (emp_id,emp_name,emp_doj)values ("es006","thomas","2000-09-12");

-- step 11: check  the age and salary  of thomas
select * from employee; 

-- step 12: check for age constraint
insert into employee values("es007","patel",10,55000,"2022-12-12");

-- 2th may 2026

show databases;

-- very very imp step
-- select the database using use command
use sit_college_db;

show tables;

select * from employee;

-- step 12: check for age constraint
insert into employee values("es007","patel",10,55000,"2022-12-12");




-- step 13: check for not null constraint for the field emp_name
insert into employee(emp_id,emp_age,emp_doj)
values("es008",44,"2022-12-12");

insert into employee(emp_id,emp_name,emp_age,emp_doj)
values("es008",null,44,"2022-12-12");


describe employee;

-- ===================================================
-- 						alter command
-- ======================================================
-- alters are used to change the structure of the tables
-- field names can be renamed
-- can modify the constraints
-- add or delete the column
-- can rename the table name

describe employee;

-- step 14: add new column emp_gender
alter table employee add emp_gender varchar(10);

-- verify 
select * from employee;

describe employee;

-- step 15: add multiple columns with constraint\
alter table employee
add emp_status varchar(10) not null,
add emp_country varchar(15) default "INDIA";

-- VERIFY
-- * represents all the fields in the table
select * from employee;

select emp_name from employee;

select emp_name,emp_age from employee;

-- step 16: change th e field name/rename the field emp_name to bname_of_emp
alter table employee
change emp_name name_of_employee varchar(50) not null;


-- verify
describe employee;

-- step 17: modify the constraint for the field emp_country
-- before modification varchar(15) and contains null value(yes) default is INDIA

alter table employee
modify emp_country varchar(30) not null default "Australia";

describe employee;

select * from employee;
insert into employee (emp_id,name_of_employee,emp_status)values("es011","sahana","active");

select * from employee;
-- ===========================================================================
-- 							update command
-- ==========================================================================































