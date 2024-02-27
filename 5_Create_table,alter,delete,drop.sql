
--------------------------------- 05 September 2023 ----------------------------------------

--CREATING TABLE:

/*
--Data Types:-
1.Boolean:True or False
2.Character:char,varchar and text
3.Numeric:integer and floating point numbers
4.Temporal
5.UUID
6.Array
7.Json
*/

/*
PRIMARY AND FOREIGN KEYS
*/

select * from payment

/*
General Synyax:
create table table_name(
column_name type column_constraint,
column_name type column_constraint,
table_constraint table_constraint
) inherits existing_table_name;
*/

/*
Example Syntax:
create table players(
player_id serial primary key,
age smallint not null
);
*/

create table account(
	user_id serial primary key,
	username varchar(50) unique not null,
	password varchar(50) not  null,
	email varchar(250) unique not null,
	created_on timestamp not null,
	last_login timestamp
)

create table job(
	job_id serial primary key,
	job_name varchar(200) unique not null
)

create table account_job(user_id integer references account(user_id),
						job_id integer references job(job_id),
						hire_date timestamp)
insert into account(username,password,email,created_on)
values('Ram','Root','ram@g.com',current_timestamp)


select * from account

insert into job(job_name) values('data scientist')
select * from job

insert into account_job values (1,1,current_timestamp)
select * from account_job

--------------------------------------------------------------------------------------------
-----------------------------------06 September 2023----------------------------------------

--Update Table:
update account set last_login=current_timestamp
update account set username='Shyam'

--Using another table's value:
select * from account
set last_login=current_timestamp

select * from account_job
update account_job set hire_date=account.created_on from account 
where account_job.user_id=account.user_id

update account set last_login=current_timestamp returning email,created_on,last_login

--Delete Clause:
insert into job(job_name) values('Cowboy')
select * from job
delete from job where job_name='Cowboy' returning job_id,job_name

create table information(
info_id serial primary key,
title varchar(500) not null,
person varchar(50) not null unique)

--Alter:
select * from information
alter table information rename to new_info
select * from new_info

alter table new_info rename column person to people

insert into new_info(title) values ('some_new_title')  --error due to  not null

alter table new_info alter column people drop not null
insert into new_info(title) values ('some new title')  --works
select * from new_info

--https://www.postgresql.orgs/docs/current/sql-alternate.html

--Drop:
alter table new_info drop column people
select * from new_info

alter table new_info drop column if exists people

--Check:
create table employees(
emp_id serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
birthdate date check (birthdate>'1900-01-01'),
hire_date date check (hire_date>birthdate),
salary integer check (salary>0))

select * from employees

insert into employees(first_name,last_name,birthdate,hire_date,salary)
values ('Jose','Portilla','1899-11-03','2010-01-01',50000)

insert into employees(first_name,last_name,birthdate,hire_date,salary)
values ('Jose','Portilla','1990-11-03','2010-01-01',5000)

insert into employees(first_name,last_name,birthdate,hire_date,salary)
values ('Sammy','Smith','1990-11-03','2010-01-01',100)




















































1











