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

-- step 12: insert varun id as cds01 and rest of field values define by urself
insert into student values("cds01","varun","2010-02-02","cds",56);


-- step 12: insert keerti, id as cds03 and marks is 250 ,rest of field values define by urself

insert into student values("cds03","keerti","2010-02-02","cds",250);


-- step 13: check for default constraint
-- insert data only for the specified columns
insert into student(s_id,s_name,s_marks) values("cda03","vidhya",45);

-- verify the dept of vidya?
select * from student;



-- 10TH may 2026
show tables;

-- select the db 
use datamites_onl;

show tables;

select * from student;

-- step 14: insert s_id as cys01,skip s_name and dept is cys
insert into student(s_id,s_dept,s_marks) values ("cys01","cys",77);

-- step 15: exclude s_dob column
insert into student(s_id,s_name,s_dept,s_marks) values("cys02","ashok","cys",88);

-- verify the dob value for the student ashok
select * from student;

-- step 16: exclude the dept for the student id cda04

-- step 17: exclude the marks
insert into student (s_id,s_name,s_dept)values("cde03","mashpa","cde");
select * from student;

-- UPDATE command
 -- step 18: update the marks of student to 65 ,who's id is cde03
 update student
 set s_marks=65
 where s_id="cde03";
 
 -- verify that marks 65 is stored in s_id "cde03" record
 
 select * from student;
 
 -- step 18: increase the marks +20 for the id cda01
 
update student
set s_marks=s_marks+20
where s_id="cde01";

-- or
update student
set s_marks=108
where s_id="cde01";

-- step 19: update the  marks to +30 for the id's are cde01 and cys02

update student
set s_marks=s_marks+30
where s_id ="cde01" or s_id="cys02";

update student
set s_marks=s_marks+30
where s_id in ("cde01","cys02");


-- step 20: fetech all the records of cde and cds dept
select * 
from student 
where s_dept in ("cde", "cda");


-- step 21: update the dob of diya to 2002-12-12
set sql_safe_updates=0;
update student 
set s_dob = '2002-12-12'
where s_name = 'diya';

select * from student where s_name="diya";

-- delete command
-- step 22: delete the records of diya

delete from student 
where s_name ="diya";

-- verify
select * from student where s_name="diya";
-- alter command

describe student;

-- step 22: add new column: add gender column without constraint
alter table student
add s_gender varchar(10);

-- verify
describe student;
select * from student;

-- step 23: add  new colums: status with constraint
alter table student
add s_status varchar(10) not null;

select * from student;

-- step 24:add two columns
alter table student add s_grade varchar(5),add s_place varchar(15) default "India";

-- step 25: delete s_status column
alter table student drop s_status;

-- verify by suing select clause

-- step 26: drop s_grade ,s_place
alter table student drop  s_grade,drop s_place;

-- change the column name : s_name to student name
alter table student change s_name student_name varchar(45);


describe student;

ALTER TABLE student_info
MODIFY s_marks INT CHECK (s_marks BETWEEN 0 AND 100);

describe student;

insert into student_info values("iot02","santhosh","2022-12-12","iot",250,"Male");




-- rename the table name

alter table student rename to student_info;

select * from student;


select * from student_info;

-- note 
-- refere the file sql_queries_datamites and execute then follow the below commands
use datamites_db;

select * from employee;

-- query 1: fetch all records from employee table
select  * from employee;

-- query 2: fetch all records from employee table where dept name is hr
select * from employee where dept_name="HR";

-- query 3: fetch all the records belongs to sales and it
select * from employee where dept_name in ("sales","IT");
select * from employee where dept_name="IT" OR dept_name="sales";


-- query 4: find the employee details who belongs to IT dept and salary is greater than 40000
select * from employee where dept_name="IT" and emp_salary >40000;

-- query 5 : find the employees details who doesnt belongs to IT and Sales
select * from employee where dept_name  not in ("sales","IT");

-- query 6: all the records except IT dept 
select * from employee where not dept_name="IT";


-- Aggregate functions-max,min,count,sum,avg

-- query 7: find the max salary from the employee table
select max(emp_salary) from employee;

-- query 8: find the min salary from the employee table

-- query 9: find the avg salary from the employee table

-- query 10:find the number of employees in employee table
-- query 11: find the total salary

-- 16th may 2026

show databases;

-- select the database
use datamites_db;

show tables;

select * from employee;

-- query 12:find the distinct(unique)names in the dept column
-- find the department names which is employee table

select distinct dept_name from employee;

select * from employee;

-- query 13:find the number of employees in each dept

select count(emp_id),dept_name,emp_name
from employee
group by dept_name;



-- query 14: find the maximum salary in each departement
select max(emp_salary),dept_name
from employee
group by dept_name;
-- query 15:find the average salary in each dept
select avg(emp_salary), dept_name from employee
group by dept_name ;

-- query 16: find the total salary in each dept

select sum(emp_salary), dept_name from employee
group by dept_name ;
-- query 17: sort the salary in ascending order
select emp_salary
from employee
order by emp_salary asc;

-- query 18: find the details of all the employees who's getting salary from  lowest to highest
select * 
from employee
order by emp_salary asc;

-- 19.arrange the employee details based on the highest salary
select * 
from employee
order by emp_salary desc;
-- query 20: fetch first three records
select *
from employee
limit 3;

-- query 21: to fetech last  5 records
-- int: usery orderby and limit
select * 
from employee
order by emp_id desc
limit 3;


-- query 18: find the details of the employee who belongs to HR dept

select * 
from  employee 
where dept_name = 'HR';
-- like operator- matching the expression
-- query 19: find the employee names starts with letter a
-- % represents match any chars followed by letter
select emp_name
from employee
where emp_name like "A%";


-- query 20: find the employee names ends with letter a

select emp_name
from employee 
where emp_name like '%a';


-- query 21: find the employee detail who is getting max salary
-- method 1: by using order by and limit
select * 
from employee
order by emp_salary desc
limit 1;


-- method 2
-- step 1: find the max salary
-- select max(emp_salary) from employee;
-- step 2: find all the employee who is getting salary equal to 90000
select * from employee where emp_salary = '90000';

-- sub queries
-- find the details of the employee who is getting max salary
select * from employee where emp_salary = (select max(emp_salary) from employee);
-- query 22: find the employee details who is getting salary more than average salary

select *
from employee
where emp_salary > (select avg(emp_salary) from employee);

-- query 24: find the second highest salary
-- step 1: find the details of the employee who is getting salary less than max salar

select *
from employee
where emp_salary < (select max(emp_salary) from employee)
order by emp_salary desc
limit 1;

select count(emp_id)
from employee
group by dept_name;

-- query 25: find the number of employees in each dept and display the emp_names along with it 

select *,
count(emp_id) over(partition by dept_name) as emp_count_column
from employee;


-- query 26: rank the employee in each dept  based on the highestt salary

select *,
rank() over(partition by dept_name order by emp_salary desc) as rank_of_emp
from employee;


-- joins

select *  from student;

select * from department;







select s.*,d.*
from student as s
inner join department as d
on s.dept_id =d.dept_id;

-- left join
select s.*,d.*
from student as s
right join department as d
on s.dept_id =d.dept_id;


select s.*,d.*
from student as s
right join department as d
on s.dept_id = d.dept_id
where d.dept_name = "CDS";






select s.*,d.*
from student as s
left join department as d
on s.dept_id =d.dept_id
where d.dept_name is NULL;


select count(s_id),dept_name
from student as s
inner join department as d
on s.dept_id = d.dept_id
group by dept_name;







































































































































