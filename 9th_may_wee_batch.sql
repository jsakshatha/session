show databases;

-- double hypen with space represents comment

-- create a new database called university_db
create database universit_db;

-- verify by using show command
show databases;


-- delete the database by using drop command
drop database universit_db;

-- verify by using show command
show databases;


-- step 1: create/select the database
-- step 2: create new database called datamites_onl
create database datamites_onl;

-- step 3:verify by using show command
show databases;

-- step 4: select the existing database by using use command
use datamites_onl;

-- step 5: create new table for students with constraints
-- primary key constraint: unique+not null constraint,it is like identifier,
-- were we can esily fetch other informations based on p.k

create table student
(s_id varchar(5) primary key,
s_name varchar(25) not null,
s_dob date ,
s_dept varchar(10) default "NA",
s_marks int check(100<s_marks<0));


-- step 6: insert one record in the student table
insert into student values("cds01","amit","2011-11-03","cds",5);

-- step 7: since we have defined incorrect condition in chk constarints,so delete table
drop table student;

show tables;

-- step 8 : create new table student again
create table student
(s_id varchar(5) primary key,
s_name varchar(25) not null,
s_dob date ,
s_dept varchar(10) default "NA",
s_marks int check(0<s_marks<100));

show tables;

-- step 9: insert only one record 
insert into student values("cds01","amit","2011-03-30","cds",75);

-- step 10: see the table with fields and data
select * from student;

-- to fetech only student name
select s_name from student;

-- to fetch only student name and dept
select s_name,s_dept from student;



-- step 11:insert multiple records
insert into student values
("cds02","bhavya","2014-12-03","cds",65),
("cda01","charan","2015-12-12","cda",88),
("cde01","diya","2019-12-11","cde",90);

-- verify 
select * from student;




























