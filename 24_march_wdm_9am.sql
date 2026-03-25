show databases;

-- comment
create database flipkart_db;

show databases;
drop database filpkart_db;

show databases;

-- step1 :create database datamites_db
create database datamites_db;

-- verify the database exist or not
show databases;

-- step 2: select the database from the list using use command
use datamites_db;

-- step 3: create student table with constraints
create table student
(s_id int primary key,
s_name varchar(50) not null,
s_age int check(s_age>18),
s_doj date,
s_country varchar(15) default "India");

-- step 4: insert one record
insert into student values
(1,"amit",25,"2023-12-03","Sri Lanka");

-- verify by using select command

select s_id from student;
select s_name,s_age,s_country from student;
-- to view all fields with datas
select * from student;

-- insert multiple records
insert into student values
(2,"bharat",24,"2022-12-05","Austraila"),
(3,"chetan",26,"2021-11-16","Sri Lanka"),
(4,"Diya",30,"2020-11-23","Australia");

-- verify by using selectcommand
select * from student;

-- 25_march_2026
-- view all the databases
show databases;

-- select the database datamites_db
use datamites_db;

show tables;
select * from student;

-- view the complete structure of the table
describe student;
-- 1. check for primary constraint
insert into student values
(1,"varun",23,"2025-12-01","India");

-- 2.check for not null constraint for the field s_name
-- insert the values for the specified column

insert into student (s_id,s_age,s_country) values
(5,23,"India");

-- 3.check for age constraint-- insert age value less than 18
insert into student (s_id,s_name,s_age,s_country) values
(5,"john",15,"India");

-- 4 check for default constraint- 
insert into student (s_id,s_name,s_age,s_doj) values
(5,"thomas",24,"2024-12-01");

-- verify
select * from student;

-- Update command
-- 1. update the age of the student who's s_id is 3
update student
set s_age=40
where s_id=3;

-- verify
select * from student;
-- alter command
-- to change the structure of the table

-- add new column s_status by using alter command
alter table student
add s_status varchar(10);

-- verfiy
select * from student;
-- when update the table without p.k disable safe update mode
set sql_safe_updates=0;

update student set s_status="active";

-- verfiy
select * from student;
-- alter and modify command to change the constraint and datatype

describe student;

-- apply constraint not null to the field s_status
alter table student
modify s_status varchar(25) not null;

-- verfiy by using describe 
describe student;


-- rename the column name using alter with channge command
-- change s_name to sudent_name

alter table student
change s_name student_name varchar(55);

-- verify
describe student;

-- rename the table name to student_info
alter table student rename to student_info;

-- verfiy by using old name--error statement
select * from student;

select * from student_info;


alter table student_info rename to student;

select * from student;



-- queries
-- 1. find the max age from student table

select max(s_age) from student;

select max(s_age) as max_age
from student;

-- 2. find the min,avg,total age from the table
select min(s_age),avg(s_age),sum(s_age)
from student;

-- 3. find the number of students
select count(s_id) as stud_count
from student;

-- solution 2
select count(*) as stud_count
from student;
-- 4. find the list of countries in the student table
select s_country from student;

-- to fetch unique values by using distinct
select distinct(s_country)
from student;

-- 5. find the students who is from India
select *
from student
where s_country="India";

-- 6. find students who's age is greater than 25
select *
from student
where s_age>25;

-- 7.find the students who's age is less than 30 and status is active
select *
from student
where s_age<30 and s_status="active";

github link:   github.com/jsakshatha/DBM_2026

step 1: go to sql folder----> sql_datamitesdb_queries.sql-->download















































































