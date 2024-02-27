--07 SEPT 2023

--------------------------------------------------------------------------------------------
---------------------------IMPORTING AND EXPORTING DATA-------------------------------------
---------------------------============================-------------------------------------

create table simple(
a integer,
b integer,
c integer)

select * from simple

/* Write a SQL atatement to create a simple table countries including columns*/

create table countries(
country_id varchar(3),
country_name varchar(50),
region_id decimal(10,0))

select * from countries



/* Write a SQL statement to create the structure of a table dup_countries  
similar to the countries*/

create table dup_countries as (select * from countries)
select * from dup_countries


/*
Write SQL stmt to create a table countries ,set a constarint null
*/
create table if not exists countries(
country_id varchar(2) not null,
country_name varchar(50) not null,
region_id decimal(10,3) not null)

select * from countries


/*
Write SQL stmt to create a table named Jobs including columns job_id,job_title,
min_salary,max_salary and check whether a max_salary amount exceeding the upper limit 
25000
*/

create table if not exists jobs(
job_id decimal(10,2),
job_title varchar(100),
min_salary decimal(6,0),
max_salary decimal(6,0) check (max_salary<=25000) )

select * from jobs
drop table jobs

/*
write a sql statement to create a table named countries including columns 
country_id,country_name
and region_id and make sure that no countries except Italy,India ,China will 
be entered in the table
*/
create table if not exists countries(
country_id varchar(2),
country_name varchar(40),
check(country_name in ('Italy','India','China')),
region_id decimal(10,2) not null)

select * from countries

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that no duplicate data
against column  country_id .
*/
CREATE TABLE IF NOT EXISTS country(
	COUNTRY_ID varchar(2) UNIQUE,
	COUNTRY_NAME varchar(40) NOT NULL CHECK (COUNTRY_NAME IN ('Italy','India','China')),
	REGION_ID decimal(10,2) NOT NULL
)

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named jobs including columns,
job_id , job_title , mini_salary , max_salary  and make sure that the default value for
job_title is blank and min_salary is 8000 and max_salary is NULL will be
entered automatically at the time of insertion, if no value assigned for the specified column.
*/
CREATE TABLE IF NOT EXISTS jobs(
	job_id dec(3,0) NOT NULL UNIQUE,
	job_title varchar(100) NOT NULL DEFAULT '  ',
	min_salary decimal(10,2) DEFAULT 8000,
	max_salary decimal(10,2)  NULL
);
drop table jobs

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that country_id column will be a key field
which will not contain any duplicate data at the time of insertion.
*/
CREATE TABLE IF NOT EXISTS countries(
	COUNTRY_ID varchar(2) NOT NULL UNIQUE PRIMARY KEY,
	COUNTRY_NAME varchar(40) NOT NULL,
	REGION_ID decimal(10,2) NOT NULL
)

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that country_id WILL BE unique 
and store an AUTO_INCREMENTED VALUE.(SERIAL)
*/
CREATE TABLE IF NOT EXISTS countries_n(
	COUNTRY_ID SERIAL NOT NULL,
	COUNTRY_NAME varchar(40) NOT NULL,
	REGION_ID decimal(10,2) NOT NULL
);

--------------------------------------------------------------------------------
/*
Write a SQL statement to create a table named countries including columns,
country_id , country_name and region_id and make sure that 
the combimation of country_id and region_id will be UNIQUE.
*/
CREATE TABLE IF NOT EXISTS countries_n(
	COUNTRY_ID varchar(2) NOT NULL UNIQUE DEFAULT ' ',
	COUNTRY_NAME varchar(40) DEFAULT NULL,
	REGION_ID decimal(10,2) NOT NULL,
	PRIMARY KEY (COUNTRY_ID,COUNTRY_NAME)
);

-----------------------------------------------------------------------------------------
 /*
Write a SQL statement to create a table job_history, including columns employee_id, start_date , end_date , 
job_id  and department_id and make sure that, the employee_id column does not contain any duplicate 
value at the time of insertion. And the foreign key column job_id content only those values 
which exist in the job stable.
*/
create table if not exists job_history(
	employee_id dec(3,0) unique,
	start_date date,
	end_date date,
	job_id dec(3,0),
	department_id dec(3,0) default null,
	foreign key(job_id) references jobs(job_id)
	
)











































