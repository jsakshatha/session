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






