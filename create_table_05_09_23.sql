
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





































